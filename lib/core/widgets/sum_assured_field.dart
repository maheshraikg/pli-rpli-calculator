import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pli_engine/pli_engine.dart';

import '../../l10n/app_localizations.dart';
import '../formatters.dart';

const kSumAssuredChips = [100000, 200000, 500000, 1000000, 2000000];

/// Whole-rupee sum assured input with quick-pick chips. Chips above
/// [maxChip] are hidden (e.g. RPLI's ₹10 lakh limit).
class SumAssuredField extends StatefulWidget {
  const SumAssuredField({super.key, required this.value, required this.onChanged, this.maxChip});

  final int? value;
  final ValueChanged<int?> onChanged;
  final int? maxChip;

  @override
  State<SumAssuredField> createState() => _SumAssuredFieldState();
}

class _SumAssuredFieldState extends State<SumAssuredField> {
  late final _controller = TextEditingController(text: widget.value?.toString() ?? '');

  @override
  void didUpdateWidget(SumAssuredField old) {
    super.didUpdateWidget(old);
    // Keep the text in step when a chip (not typing) changed the value.
    if (int.tryParse(_controller.text) != widget.value) {
      _controller.text = widget.value?.toString() ?? '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final v = widget.value;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(9)],
        decoration: InputDecoration(
          labelText: l.sumAssuredLabel,
          border: const OutlineInputBorder(),
          helperText: v == null ? null : formatRupees(Paise.wholeRupees(v)),
        ),
        onChanged: (text) => widget.onChanged(int.tryParse(text)),
      ),
      const SizedBox(height: 8),
      Wrap(spacing: 8, runSpacing: 4, children: [
        for (final amount in kSumAssuredChips)
          if (widget.maxChip == null || amount <= widget.maxChip!)
            ChoiceChip(
              label: Text(formatLakh(amount)),
              selected: v == amount,
              onSelected: (_) => widget.onChanged(amount),
            ),
      ]),
    ]);
  }
}
