#!/usr/bin/env python3
"""Dump every table found in an official premium PDF to raw CSV files for
manual review, as a first step towards the converter's CSV format.

The layout of India Post PDFs varies between circulars, so the output is
NOT used directly: a person checks each raw CSV against the PDF, then
reshapes it into source_tables/<tableId>.csv.

Requires: pip install pdfplumber
Usage:    python3 -I tools/extract_pdf_tables.py source_tables/foo.pdf out_dir/
"""
import csv
import sys
from pathlib import Path


def main(argv):
    if len(argv) != 3:
        print(__doc__)
        return 2
    import pdfplumber  # imported late so --help works without it

    pdf_path, out = Path(argv[1]), Path(argv[2])
    out.mkdir(parents=True, exist_ok=True)
    count = 0
    with pdfplumber.open(pdf_path) as pdf:
        for page_no, page in enumerate(pdf.pages, start=1):
            for t_no, table in enumerate(page.extract_tables(), start=1):
                dest = out / f"{pdf_path.stem}_p{page_no:03d}_t{t_no}.csv"
                with dest.open("w", newline="", encoding="utf-8") as f:
                    csv.writer(f).writerows([[c or "" for c in row] for row in table])
                count += 1
    print(f"Wrote {count} raw tables to {out}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
