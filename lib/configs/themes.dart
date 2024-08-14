import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

final theTheme = ThemeData(
  scaffoldBackgroundColor: scaffoldColor,
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
      elevation: MaterialStatePropertyAll(8),
      iconSize: MaterialStatePropertyAll(18),
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
      color: binky,
      fontFamily: circularStdFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      // height: 12,
    ),
    bodyMedium: TextStyle(
      color: Color.fromRGBO(123, 123, 139, 1),
      fontFamily: circularStdFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // height: 14,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontFamily: circularStdFamily,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      // height: 20,
    ),
    labelLarge: TextStyle(
      color: Color.fromRGBO(123, 123, 139, 1),
      fontFamily: circularStdFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // height: 14,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    padding: const EdgeInsets.symmetric(vertical: 18),
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
);
