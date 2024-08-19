import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    super.key,
    this.icon,
    this.enabled = true,
    this.label,
    this.hint,
    this.cornerRadius,
    this.secondaryIconColor,
    required this.controller,
    this.iconWidget,
  });
  final IconData? icon;
  final bool enabled;
  final String? label, hint;
  final double? cornerRadius;
  final Color? secondaryIconColor;
  final TextEditingController controller;
  final Widget? iconWidget;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: deebPurble,
        borderRadius: BorderRadius.circular(cornerRadius ?? 6),
      ),
      padding: EdgeInsets.symmetric(
        // vertical: getProportionateScreenHeight(18),
        horizontal: getProportionateScreenWidth(23),
      ),
      child: Row(
        children: [
          iconWidget ??
              Icon(
                icon,
                color: secondaryIconColor,
                // size: 12,
              ),
          SizedBox(
            width: getProportionateScreenWidth(17),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              maxLines: null,
              minLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                enabled: enabled,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 6),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: InputBorder.none,
                hintText: hint,
                labelText: label,
                hintStyle: theme.textTheme.bodyMedium!.copyWith(
                  color: deluge,
                ),
              ),
              style: theme.textTheme.bodyMedium!.copyWith(
                color: deluge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
