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
          height: getScreenHeight(3),
          width: getScreenWidth(1),
          decoration: BoxDecoration(
            color: bottomScaffoldColor,
            gradient: RadialGradient(
              center: AlignmentDirectional.center,
              tileMode: TileMode.clamp,
              // transform: GradientRotation(0),
              radius: 0.6,
              stops: const [
                0,
                0.1,
                0.2,
                0.3,
                0.4,
                0.5,
                0.6,
                0.7,
                0.8,
                0.9,
                1,
              ],
              colors: [
                Colors.transparent,
                bottomScaffoldColor.withOpacity(0.1),
                bottomScaffoldColor.withOpacity(0.2),
                bottomScaffoldColor.withOpacity(0.3),
                bottomScaffoldColor.withOpacity(0.4),
                bottomScaffoldColor.withOpacity(0.5),
                bottomScaffoldColor.withOpacity(0.6),
                bottomScaffoldColor.withOpacity(0.7),
                bottomScaffoldColor.withOpacity(0.8),
                bottomScaffoldColor.withOpacity(0.9),
                bottomScaffoldColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
