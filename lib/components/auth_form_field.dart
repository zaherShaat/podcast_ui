import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    super.key,
    required this.icon,
    this.enabled = true,
    this.label,
    this.hint,
  });
  final IconData icon;
  final bool enabled;
  final String? label, hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        contentPadding: const EdgeInsets.all(18),
        filled: true,
        enabled: enabled,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: const Color.fromRGBO(29, 25, 44, 1),
        hintText: hint,
        labelText: label,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(116, 119, 160, 1),
          fontFamily: circularStdFamily,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          // height: 14,
        ),
      ),
      style: const TextStyle(
        color: Color.fromRGBO(116, 119, 160, 1),
        fontFamily: circularStdFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        // height: 14,
      ),
    );
  }
}
