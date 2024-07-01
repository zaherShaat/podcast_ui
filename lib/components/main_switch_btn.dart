import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class MainSwitchBtn extends StatefulWidget {
  const MainSwitchBtn(
      {super.key, required this.onChanged, required this.gettenVal});
  final void Function(bool? value) onChanged;
  final bool gettenVal;
  @override
  State<MainSwitchBtn> createState() => _MainSwitchBtnState();
}

class _MainSwitchBtnState extends State<MainSwitchBtn> {
  @override
  Widget build(BuildContext context) {
    return Switch( 
      
      value: widget.gettenVal,
      onChanged: widget.onChanged,
      inactiveThumbColor: iconColor,
    );
  }
}
