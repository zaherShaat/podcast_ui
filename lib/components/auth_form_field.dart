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
  });
  final IconData icon;
  final bool enabled;
  final String? label, hint;
  final double? cornerRadius;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
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
        fillColor: const Color.fromRGBO(29, 25, 44, 1),
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
