import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import '../../core/utils/helpers/helpers.dart' as helpers;

part 'text.dart';
part 'icon.dart';

ThemeData defaultThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'Montserrat',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF391C4A),
    ),
    // textTheme: textTheme(context),
  );
}

final ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0),
    fontFamily: "Raleway",
    // canvasColor: Colors.white,
    cardColor: Colors.white,
    canvasColor: const Color(0xfff0f1f5),
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(4278200398, {
      50: Color(0xffe5f3ff),
      100: Color(0xffcce6ff),
      200: Color(0xff99cdff),
      300: Color(0xff66b4ff),
      400: Color(0xff339cff),
      500: Color(0xff0083ff),
      600: Color(0xff0069cc),
      700: Color(0xff004e99),
      800: Color(0xff003466),
      900: Color(0xff001a33)
    }),
    primaryColor: const Color(0xFF145a92),
    /*inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: ApplicationConfigs.primaryColorGreen.withOpacity(0.6),
              width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: ApplicationConfigs.primaryColorGreen.withOpacity(0.9),
                width: 0.8)),
        border: OutlineInputBorder(
          // borderSide: BorderSide.none, // no border
            borderSide: BorderSide(
                color: ApplicationConfigs.primaryColorGreen.withOpacity(0.6),
                width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(5)))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          // minimumSize: Size(0.35.wp, 0.05.hp),
            shape: const StadiumBorder())),*/
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      shape: StadiumBorder(),
    ));

ThemeData darkThemeData = ThemeData(
  // canvasColor: Colors.white,
  brightness: Brightness.dark,
  primarySwatch: const MaterialColor(4278200398, {
    50: Color(0xffe5f3ff),
    100: Color(0xffcce6ff),
    200: Color(0xff99cdff),
    300: Color(0xff66b4ff),
    400: Color(0xff339cff),
    500: Color(0xff0083ff),
    600: Color(0xff0069cc),
    700: Color(0xff004e99),
    800: Color(0xff003466),
    900: Color(0xff001a33)
  }),
  primaryColor: const Color(0xff00284e),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(35, 5),
        shape: const StadiumBorder(),
      )),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    padding: EdgeInsets.only(left: 16.0, right: 16.0),
    shape: StadiumBorder(),
  ),
);