import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_portfolio/constants.dart';

ThemeData darkTheme = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(HexColor('#bbd9d0'))),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: appDefaultBG,
    elevation: 0,
    titleTextStyle: const TextStyle(
      fontFamily: 'MavenPro',
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: appDefaultBG,
  drawerTheme: DrawerThemeData(backgroundColor: HexColor('#0c0c0d')),
  fontFamily: 'MavenPro',
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      fontSize: 38.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      // color: HexColor('#bbd9d0'),
    ),
    bodyMedium: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: HexColor('#cececf'),
    ),
    bodySmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white, // news card icons
    ),
  ),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: HexColor('#262726'),
    primary: HexColor('#00c06b'),
    secondary: HexColor('#a09079'), // news card icons
  ),
);
