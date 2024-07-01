import 'package:flutter/material.dart';

class MainRadioBtn extends StatefulWidget {
  final bool gettenVal;
  final void Function(bool? value) onChanged;
  const MainRadioBtn(
      {super.key, required this.gettenVal, required this.onChanged});

  @override
  State<MainRadioBtn> createState() => _MainRadioBtnState();
}

class _MainRadioBtnState extends State<MainRadioBtn> {
  // bool _groupVal = false;
  @override
  Widget build(BuildContext context) {
    return Radio<bool>.adaptive(
      value: true,
      groupValue: widget.gettenVal,
      onChanged: widget.onChanged,
      toggleable: true,
      useCupertinoCheckmarkStyle: true,
    );
  }
}
