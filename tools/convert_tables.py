#!/usr/bin/env python3
"""Convert official premium tables (CSV, transcribed/extracted from the India
Post PDFs) into the versioned JSON format in assets/data/tables/.

Input, per table, in source_tables/:
  <tableId>.meta.json   {"planId", "columnDimension", "unitSumAssured", "source"}
  <tableId>.csv         header: frequency,entry_age,<col>,<col>,...
                        one row per (frequency, entry age); blank or "-" = not offered

Usage:  python3 -I tools/convert_tables.py source_tables assets/data/tables

This script checks structure only. Full rule-aware validation (every entry
age present, empty cells, monotonicity) is done by the Dart validator:
  cd packages/pli_engine && dart run bin/validate_data.dart ../../assets/data
"""
import csv
import json
import sys
from decimal import Decimal, InvalidOperation
from pathlib import Path

FREQUENCIES = ("MONTHLY", "QUARTERLY", "HALF_YEARLY", "YEARLY")
DIMENSIONS = ("MATURITY_AGE", "PREMIUM_CEASING_AGE", "TERM_YEARS")
NOT_OFFERED = {"", "-", "–", "—", "NA", "N/A"}


class ConversionError(Exception):
    pass


def parse_amount(text, where):
    text = text.strip().replace(",", "")
    if text in NOT_OFFERED:
        return None
    try:
        d = Decimal(text)
    except InvalidOperation:
        raise ConversionError(f"{where}: not a number: {text!r}")
    if d <= 0:
        raise ConversionError(f"{where}: non-positive premium {text!r}")
    if d.as_tuple().exponent < -2:
        raise ConversionError(f"{where}: more than 2 decimals: {text!r}")
    return int(d) if d == d.to_integral_value() else float(d)


def convert(meta_path: Path, csv_path: Path) -> dict:
    meta = json.loads(meta_path.read_text(encoding="utf-8"))
    for key in ("planId", "columnDimension", "unitSumAssured", "source"):
        if key not in meta:
            raise ConversionError(f"{meta_path.name}: missing {key!r}")
    if meta["columnDimension"] not in DIMENSIONS:
        raise ConversionError(f"{meta_path.name}: bad columnDimension")

    with csv_path.open(newline="", encoding="utf-8-sig") as f:
        reader = csv.reader(f)
        header = next(reader)
        if [h.strip().lower() for h in header[:2]] != ["frequency", "entry_age"]:
            raise ConversionError(f"{csv_path.name}: header must start with frequency,entry_age")
        try:
            columns = [int(h) for h in header[2:]]
        except ValueError:
            raise ConversionError(f"{csv_path.name}: column headers must be integers")
        if len(set(columns)) != len(columns):
            raise ConversionError(f"{csv_path.name}: duplicate column headers")

        premiums: dict = {}
        for line_no, row in enumerate(reader, start=2):
            if not any(c.strip() for c in row):
                continue
            where = f"{csv_path.name}:{line_no}"
            if len(row) != len(header):
                raise ConversionError(f"{where}: {len(row)} cells, expected {len(header)}")
            freq = row[0].strip().upper()
            if freq not in FREQUENCIES:
                raise ConversionError(f"{where}: unknown frequency {row[0]!r}")
            age = row[1].strip()
            if not age.isdigit():
                raise ConversionError(f"{where}: bad entry age {age!r}")
            rows = premiums.setdefault(freq, {})
            if age in rows:
                raise ConversionError(f"{where}: duplicate row {freq} age {age}")
            rows[age] = [parse_amount(c, f"{where} col {columns[i]}") for i, c in enumerate(row[2:])]

    table_id = csv_path.stem
    return {
        "schemaVersion": 1,
        "tableId": table_id,
        "planId": meta["planId"],
        "isSample": False,
        "source": meta["source"],
        "unitSumAssured": meta["unitSumAssured"],
        "columnDimension": meta["columnDimension"],
        "columns": columns,
        "monotonicExceptions": meta.get("monotonicExceptions", []),
        "agesNotInSource": meta.get("agesNotInSource", []),
        "premiums": {
            fq: dict(sorted(premiums[fq].items(), key=lambda kv: int(kv[0])))
            for fq in FREQUENCIES if fq in premiums
        },
    }


def main(argv):
    if len(argv) != 3:
        print(__doc__)
        return 2
    src, out = Path(argv[1]), Path(argv[2])
    out.mkdir(parents=True, exist_ok=True)
    csvs = sorted(src.glob("*.csv"))
    if not csvs:
        print(f"No CSV tables in {src}")
        return 1
    failed = 0
    for csv_path in csvs:
        meta_path = csv_path.with_suffix(".meta.json")
        try:
            if not meta_path.exists():
                raise ConversionError(f"missing {meta_path.name}")
            table = convert(meta_path, csv_path)
        except ConversionError as e:
            print(f"FAIL {csv_path.name}: {e}")
            failed += 1
            continue
        dest = out / f"{table['tableId']}.json"
        dest.write_text(json.dumps(table, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
        print(f"OK   {csv_path.name} -> {dest}")
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
