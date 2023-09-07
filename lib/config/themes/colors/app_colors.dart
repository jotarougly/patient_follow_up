import 'package:flutter/material.dart';

import 'color_util.dart';

class AppColors {
  static Color whiteSoft =  HexColor('#EEEEEE');
  static Color whiteSecondSoft =  HexColor('#F9F9F9');
  static Color red = const Color(0xFFC8365B);
  static Color white = Colors.white;
  static Color black = const Color(0xFF191919);
  static Color grey = const Color(0xFF9e9e9e);
  static Color greySoft = HexColor("#F1F1F1");
  static Color stepGrey = const Color(0xFFA2A2A2);
  static Color mediumDarkgrey = const Color(0xFF757575);
  static Color cyan = Colors.cyan;
  static Color heavyYellow = const Color(0xFFffff00);
  static Color darkGrey = HexColor("#3B3D3A");


  static Color appBaseColor = HexColor("#7C77B9");
  static Color appDarkBaseColor = HexColor("#4A148C");
  static Color appSecondColor = HexColor("#8fbfe0");
  static Color appThirdColor = HexColor("#1d8a99");
  static Color appThirdDarkColor = HexColor("#84FFFF");
  static Color appFourthColor = HexColor("#0bc9cd");

  static Color stableState = HexColor("#C6FF00");

  static Color onBoardingFirst = HexColor("#018195");
  static Color onBoardingSecond = HexColor("#0BC9CD");
  static Color onBoardingThird = HexColor("#7E7EA3");
  static Color testimonialText = HexColor("#353635");
  static Color appDarkBlue = HexColor("#333372");
  static Color appGoldColor = HexColor("#CBA655");
  static Color appBtnColor = HexColor("#333372");
  static Color appDarkBlueSoft = HexColor("#016bbb");
  static Color appOrange = HexColor("#ce651a");
  static Color appBtnOrange = HexColor("#EE8877");
  static Color appCyan = HexColor("#7CCEDB");
  static Color appTextOrange = HexColor("#FDAB8E");
  static Color appBrown = HexColor("#f8e4d2");
  static Color appSecondWhite = HexColor("#F9FAFB");
  static Color appMenuBackground = HexColor("#3B3D3A");

  static Map<int, Color> redSwatch = getSwatch(red);

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  static Map<int, Color> getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;
    const lowDivisor = 6;
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }
}
