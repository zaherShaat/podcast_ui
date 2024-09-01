import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard(
      {super.key,
      required this.color,
      required this.asset,
      required this.label,
      this.cardColor,
      this.iconColor});
  final Color color;
  final Color? cardColor, iconColor;

  final String asset, label;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: cardColor ?? chly,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(19)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            DeviceCircledIcon(
              color: color,
              child: SvgPicture.asset(
                asset,
                // ignore: deprecated_member_use
                color: iconColor,
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(14),
            ),
            Expanded(child: Text(label)),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
          ],
        ),
      ),
    );
  }
}

class DeviceCircledIcon extends StatelessWidget {
  final Color color;
  final Widget child;

  const DeviceCircledIcon(
      {super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(37),
      width: getProportionateScreenWidth(37),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: child,
    );
  }
}
