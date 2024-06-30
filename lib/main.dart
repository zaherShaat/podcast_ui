import 'package:flutter/material.dart';
import 'package:pod_mood/components/event_widgets.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return MaterialApp(
      theme: theTheme,
      home: Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 120,
        //   title: PodCard(
        //     onPressed: () {},
        //   ),
        // ),
        body: Center(
          child: EventStackedBox(),
        ),
      ),
    );
  }
}
