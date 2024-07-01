import 'package:flutter/material.dart';
import 'package:pod_mood/components/favourite_box.dart';
import 'package:pod_mood/components/main_switch_btn.dart';
import 'package:pod_mood/components/navigation_element.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _gettenValue = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return MaterialApp(
      theme: theTheme,
      home: Scaffold(
        bottomNavigationBar: MainBottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        // appBar: AppBar(
        //   toolbarHeight: 120,
        //   title: PodCard(
        //     onPressed: () {},
        //   ),
        // ),
        body: Column(
          children: [
            FavouriteBox(
              onFavPressed: () {},
            ),
            // Spacer(),
            Card(
              child: MainSwitchBtn(
                gettenVal: _gettenValue,
                onChanged: (value) {
                  setState(() {
                    _gettenValue = !_gettenValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
