// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SizeConfig extends ChangeNotifier {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  // Get the proportionate height as per screen size
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
// 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

double getScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig._mediaQueryData.size.height;
// 812 is the layout height that designer use
  return screenHeight / inputHeight;
}

double getScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig._mediaQueryData.size.width;
// 812 is the layout Width that designer use
  return screenWidth / inputWidth;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
// 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
