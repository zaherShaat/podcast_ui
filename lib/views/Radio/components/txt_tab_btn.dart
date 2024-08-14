import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class TxtTabBtn extends StatelessWidget {
  const TxtTabBtn(
      {super.key,
      required this.onPressed,
      required this.label,
      this.selected = false});
  final void Function() onPressed;
  final String label;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    final thisTheme = Theme.of(context);
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: selected ? binky : thisTheme.iconTheme.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
