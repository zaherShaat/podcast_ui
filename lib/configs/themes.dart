import 'package:flutter/material.dart';
import 'package:pod_mood/configs/constants.dart';

final theTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(45, 44, 60, 1),
  primaryColor: const Color.fromRGBO(24, 26, 38, 1),
  cardColor: const Color.fromRGBO(11, 11, 21, 1),
  cardTheme: CardTheme(
    elevation: 0,
    color: const Color.fromRGBO(11, 11, 21, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color.fromRGBO(92, 94, 111, 1),
    size: 21.5,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromRGBO(24, 26, 38, 1),
    elevation: 10,
    type: BottomNavigationBarType.shifting,
    unselectedIconTheme: IconThemeData(
      color: Color.fromRGBO(92, 94, 111, 1),
      size: 21.5,
    ),
    selectedIconTheme: IconThemeData(
      color: Color.fromRGBO(251, 101, 128, 1),
      size: 24.5,
    ),
    selectedLabelStyle: TextStyle(
      fontFamily: circularStdFamily,
      color: Color.fromRGBO(251, 101, 128, 1),
      fontSize: 9,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: circularStdFamily,
      color: Color.fromRGBO(92, 94, 111, 1),
      fontSize: 9,
      fontWeight: FontWeight.normal,
      // height: 9,
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      color: Color.fromRGBO(251, 101, 128, 1),
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
);
