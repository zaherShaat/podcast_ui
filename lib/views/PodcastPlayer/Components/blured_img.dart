import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class BluredImg extends StatelessWidget {
  const BluredImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.p,
      children: <Widget>[
        Image(
          fit: BoxFit.cover,
          image: const AssetImage(podBoxImgAsset),
          height: getScreenHeight(3),
          width: getScreenWidth(1),
        ),
        Container(
          height: getProportionateScreenHeight(336),
          width: getScreenWidth(1),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: AlignmentDirectional.topCenter,
              tileMode: TileMode.clamp,
              // transform: GradientRotation(0),
              radius: 0.85,
              stops: const [
                0,
                0.2,
                0.35,
                0.55,
                0.85,
                1,
              ],
              colors: [
                Colors.transparent,
                scaffoldColor.withOpacity(0.1),
                scaffoldColor.withOpacity(0.35),
                scaffoldColor.withOpacity(0.55),
                scaffoldColor.withOpacity(0.75),
                scaffoldColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
