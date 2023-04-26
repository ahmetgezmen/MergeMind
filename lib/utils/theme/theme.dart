import 'package:chatgptapp/utils/color_palet.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final themeDark = ThemeData.dark(useMaterial3: true);

  static final themeLight = ThemeData(
    useMaterial3: true,
    cardTheme: CardTheme(
      color: ColorPalet.primer.withOpacity(0.4),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    drawerTheme: DrawerThemeData(
      elevation: 0,
      backgroundColor: ColorPalet.backcolor,
    ),
    appBarTheme: AppBarTheme(
      color: ColorPalet.seconder,
      iconTheme: IconThemeData(
        color: ColorPalet.tersiyer,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: ColorPalet.primer,
      secondary: ColorPalet.backcolor,
      background: ColorPalet.backcolor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorPalet.seconder,
      filled: true,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorPalet.primer,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorPalet.primer,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: ColorPalet.primer,
        ),
      ),
    ),
  );
}
