import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

final theTheme =  ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
      elevation: MaterialStatePropertyAll(8),
      iconSize: MaterialStatePropertyAll(18),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: topScaffoldColor,
    actionsIconTheme: IconThemeData(
      color: binky,
    ),
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      color: white,
      fontFamily: circularStdFamily,
      fontSize: 23,
      fontWeight: FontWeight.bold,
      // height: 20,
    ),
    iconTheme: IconThemeData(
      color: binky,
    ),
  ),
  primaryColor: chly,
  cardColor: cardColor,
  cardTheme: CardTheme(
    elevation: 10,
    margin: EdgeInsets.zero,
    color: cardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  iconTheme: const IconThemeData(
    color: iconColor,
    size: 21.5,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: chly,
    elevation: 10,
    type: BottomNavigationBarType.shifting,
    unselectedIconTheme: IconThemeData(
      color: iconColor,
      size: 21.5,
    ),
    selectedIconTheme: IconThemeData(
      color: binky,
      size: 24.5,
    ),
    selectedLabelStyle: TextStyle(
      fontFamily: circularStdFamily,
      color: binky,
      fontSize: 9,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
    unselectedItemColor: iconColor,
    selectedItemColor: binky,
    unselectedLabelStyle: TextStyle(
      fontFamily: circularStdFamily,
      color: iconColor,
      fontSize: 9,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: white,
      fontFamily: circularStdFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      // height: 12,
    ),
    bodyMedium: TextStyle(
      color: white,
      fontFamily: circularStdFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // height: 14,
    ),
    bodyLarge: TextStyle(
      color: white,
      fontFamily: circularStdFamily,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      // height: 20,
    ),
    displayLarge: TextStyle(
      color: white,
      fontFamily: hKGroteskFamily,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      // height: 20,
    ),
    displayMedium: TextStyle(
      color: white,
      fontFamily: hKGroteskFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // height: 14,
    ),
    displaySmall: TextStyle(
      color: white,
      fontFamily: hKGroteskFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      // height: 12,
    ),
    labelLarge: TextStyle(
      color: slateGray,
      fontFamily: circularStdFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // height: 14,
    ),
    labelMedium: TextStyle(
      fontFamily: circularStdFamily,
      color: slateGray,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
    labelSmall: TextStyle(
      fontFamily: circularStdFamily,
      color: slateGray,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textTheme: ButtonTextTheme.primary,
    // height: 48,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      alignment: Alignment.center,
      elevation: const MaterialStatePropertyAll(5),
      iconSize: const MaterialStatePropertyAll(18),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 8,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      enableFeedback: true,
      shadowColor:
          const MaterialStatePropertyAll(Color.fromRGBO(11, 15, 50, 1)),
      surfaceTintColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.8)),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(
          color: Colors.white,
          fontFamily: circularStdFamily,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  ),
  radioTheme: const RadioThemeData(
    fillColor: MaterialStatePropertyAll(
      Color.fromRGBO(43, 42, 58, 1),
    ),
  ),
  switchTheme: SwitchThemeData(
      trackColor: const MaterialStatePropertyAll(mainSwichColor),
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return binky; // Color when thumb is pressed
        } else if (states.contains(MaterialState.hovered)) {
          return iconColor; // Color when thumb is hovered
        } else if (states.contains(MaterialState.focused)) {
          return iconColor; // Color when thumb is focused
        }
        return binky; // Default color
      }),
      trackOutlineWidth: const MaterialStatePropertyAll(0),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent)),
  checkboxTheme: CheckboxThemeData(
    checkColor: const MaterialStatePropertyAll(deluge),
    fillColor: const MaterialStatePropertyAll(deebPurble),
    side: BorderSide.none,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(150),
    ),
  ),
);
