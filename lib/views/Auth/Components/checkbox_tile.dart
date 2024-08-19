import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.label,
      this.fillColor});
  final bool value;
  final void Function(bool?)? onChanged;
  final String label;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Checkbox.adaptive(
          fillColor: MaterialStatePropertyAll(fillColor),
          checkColor: fillColor != null ? white : null,
          value: value,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
