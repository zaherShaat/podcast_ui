import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:pod_mood/components/public_gardient_body.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Tutorial/tutorial_home.dart';
import 'package:pod_mood/views/navigation_page.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({super.key});

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  _goToHome() async {
    bool firstRun = await IsFirstRun.isFirstRun();
    if (firstRun) {
       Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const TutorialHome(),
          ),
        );
    } else {
      await Future.delayed(Durations.long1).then(
        (value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const NavigationPage(),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _goToHome();
  }

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
