import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class MoreNavigationCard extends StatelessWidget {
  final Widget? leadingWidget;

  const MoreNavigationCard(
      {super.key,
      required this.label,
       this.onTap,
       this.leadingWidget});
  final String label;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(500),
      highlightColor: Colors.white,
      onTap: onTap,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(19)),
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(16)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(16),
              ),
              Text(label),
              const Spacer(),
              leadingWidget ??
                  Container(
                    height: getProportionateScreenHeight(13.65),
                    width: getProportionateScreenWidth(13.65),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconColor,
                    ),
                    // padding: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 9,
                      color: Colors.white,
                    ),
                  ),
              SizedBox(
                width: getProportionateScreenWidth(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
