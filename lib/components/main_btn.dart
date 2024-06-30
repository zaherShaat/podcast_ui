import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({
    super.key,
    required this.onPressed,
    this.iconData,
    required this.label,
    this.txtColor,
    required this.backColor,
    this.bold = false,
  });
  final void Function() onPressed;
  final IconData? iconData;
  final String label;
  final Color? txtColor;
  final Color backColor;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(backColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconData == null ? Container() : Icon(iconData),
          Text(
            label,
            style: TextStyle(
              color: txtColor,
              fontWeight: bold ? FontWeight.bold : null,
              fontSize: bold ? 16 : null,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
