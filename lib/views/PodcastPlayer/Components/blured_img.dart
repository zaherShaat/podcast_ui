import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class BluredImg extends StatelessWidget {
  const BluredImg({super.key, required this.asset});
final String asset;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.p,
      children: <Widget>[
        Image(
          fit: BoxFit.cover,
          image:  AssetImage(asset),
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
                topScaffoldColor.withOpacity(0.1),
                topScaffoldColor.withOpacity(0.2),
                topScaffoldColor.withOpacity(0.3),
                topScaffoldColor.withOpacity(0.4),
                topScaffoldColor.withOpacity(0.5),
                topScaffoldColor.withOpacity(0.6),
                topScaffoldColor.withOpacity(0.7),
                topScaffoldColor.withOpacity(0.8),
                topScaffoldColor.withOpacity(0.9),
                topScaffoldColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
