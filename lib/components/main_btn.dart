import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({
    super.key,
    required this.onPressed,
    this.iconData,
    required this.label,
    this.txtColor,
    required this.backColor,
    this.bold = false,
    this.iconColor,
    this.iconSize,
    this.iconWidget,
  });
  final void Function() onPressed;
  final IconData? iconData;
  final String label;
  final Color? txtColor, iconColor;
  final Color backColor;
  final bool bold;
  final double? iconSize;
  final Widget? iconWidget;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconData == null
              ? iconWidget!
              : Icon(
                  iconData,
                  color: iconColor,
                  size: iconSize,
                ),
          SizedBox(
            width: getProportionateScreenWidth(8),
          ),
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

class GradientMainBtn extends StatelessWidget {
  final void Function() onPressed;
  final IconData? iconData;
  final String label;
  final List<Color>? gradientColors;
  // final bool bold;

  const GradientMainBtn(
      {super.key,
      required this.onPressed,
      this.iconData,
      required this.label,
      this.gradientColors,
     });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: gradientColors ?? <Color>[deepBinky, binky],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              label,
              style: theme.textTheme.displayLarge!.copyWith(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
