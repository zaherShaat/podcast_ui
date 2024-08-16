import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    super.key,
    required this.icon,
    this.enabled = true,
    this.label,
    this.hint,
    this.cornerRadius,
    this.secondaryIconColor, required this.controller,
  });
  final IconData icon;
  final bool enabled;
  final String? label, hint;
  final double? cornerRadius;
  final Color? secondaryIconColor;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: secondaryIconColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius ?? 6),
        ),
        contentPadding: const EdgeInsets.all(18),
        filled: true,
        enabled: enabled,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius ?? 6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius ?? 6),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius ?? 6),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: deebPurble,
        hintText: hint,
        labelText: label,
        hintStyle: theme.textTheme.bodyMedium!.copyWith(
          color: deluge,
        ),
      ),
      style: theme.textTheme.bodyMedium!.copyWith(
        color: deluge,
      ),
    );
  }
}
