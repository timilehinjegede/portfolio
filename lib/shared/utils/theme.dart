import 'package:flutter/material.dart';

// base theme
final baseTheme = ThemeData.light();

// app theme
final ThemeData appTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: appColors.primary,
  backgroundColor: appColors.black.withOpacity(.5),
  primaryColor: appColors.primary,
  appBarTheme: baseTheme.appBarTheme.copyWith(
    backgroundColor: appColors.primary,
    elevation: 0,
    foregroundColor: appColors.white,
    titleTextStyle: TextStyle(
      color: appColors.white,
    ),
    toolbarTextStyle: TextStyle(
      color: appColors.white,
    ),
  ),
  dividerColor: appColors.grey,
  brightness: Brightness.light,
  buttonTheme: baseTheme.buttonTheme.copyWith(
    height: 45,
    minWidth: double.infinity,
    buttonColor: appColors.orange,
    textTheme: ButtonTextTheme.normal,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    disabledColor: appColors.orange.withOpacity(.4),
  ),
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: appColors.white,
      ),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: appColors.white,
      ),
    ),
  ),
  textTheme: baseTheme.copyWith().textTheme.apply(
        fontFamily: 'Font Here',
        bodyColor: appColors.white,
      ),
);

// app colors
const appColors = AppColors(
  primary: Color(0xFF212234),
  lightPrimary: Color(0xFF25263B),
  darkPrimary: Color(0xFF22273B),
  darkerPrimary: Color(0xFF00152E),
  orange: Color(0xFFFF4B56),
  grey: Color(0xFFC4C4C4),
  white: Colors.white,
  black: Colors.black,
);

// app colors model
class AppColors {
  const AppColors({
    required this.primary,
    required this.lightPrimary,
    required this.darkPrimary,
    required this.darkerPrimary,
    required this.orange,
    required this.white,
    required this.black,
    required this.grey,
  });

  final Color primary;
  final Color lightPrimary;
  final Color darkPrimary;
  final Color darkerPrimary;
  final Color orange;
  final Color white;
  final Color black;
  final Color grey;
}
