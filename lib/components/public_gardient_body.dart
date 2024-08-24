import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: scaffoldGradient,
      ),
      child: child,
    );
  }
}
