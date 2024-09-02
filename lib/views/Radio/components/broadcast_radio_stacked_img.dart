import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class BroadcastRadioStackedImg extends StatelessWidget {
  const BroadcastRadioStackedImg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(192),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Expanded(child: SvgPicture.asset(waveBroadcastAsset)),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              broadcastBoxImgAsset,
              height: getProportionateScreenHeight(192),
              width: getProportionateScreenWidth(190),
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
