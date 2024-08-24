import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/constants.dart';

class SplashHome extends StatelessWidget {
  const SplashHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: SvgPicture.asset(logoAsset),
        ),
      ),
    );
  }
}
