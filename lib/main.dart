import 'package:flutter/material.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/themes.dart';
import 'package:pod_mood/views/Podcasts/latest_plays_page.dart';
import 'package:pod_mood/views/navigation_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return MaterialApp(
      theme: theTheme,
      home: const NavigationPage(),
    );
  }
}
