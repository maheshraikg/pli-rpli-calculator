import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pli_engine/pli_engine.dart';

import '../formatters.dart';

/// Whole-rupee (or whole-number) input that reports null when empty.
class AmountField extends StatefulWidget {
  const AmountField({super.key, required this.label, required this.value, required this.onChanged, this.rupees = true});

  final String label;
  final int? value;
  final ValueChanged<int?> onChanged;
  final bool rupees;

  @override
  State<AmountField> createState() => _AmountFieldState();
}

class _AmountFieldState extends State<AmountField> {
  late final _controller = TextEditingController(text: widget.value?.toString() ?? '');

  @override
  void didUpdateWidget(AmountField old) {
    super.didUpdateWidget(old);
    if (int.tryParse(_controller.text) != widget.value) _controller.text = widget.value?.toString() ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final v = widget.value;
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(9)],
      decoration: InputDecoration(
        labelText: widget.label,
        
        helperText: widget.rupees && v != null ? formatRupees(Paise.wholeRupees(v)) : null,
      ),
      onChanged: (t) => widget.onChanged(int.tryParse(t)),
    );
  }
}
