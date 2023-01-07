import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyThemes {
  static final _baseDark = ThemeData.dark();
  static final dark = _buildDarkTheme();

  static ThemeData _buildDarkTheme() {
    final darkTheme = _baseDark.copyWith(
      scaffoldBackgroundColor: MyColors.scaffold,
      appBarTheme: _baseDark.appBarTheme.copyWith(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      indicatorColor: MyColors.indicator,
      bottomNavigationBarTheme: _baseDark.bottomNavigationBarTheme.copyWith(
        selectedItemColor: MyColors.indicator,
        unselectedItemColor: Colors.white,
        backgroundColor: MyColors.darkBlue,
      ),
      dialogBackgroundColor: MyColors.scaffold,
      dialogTheme: _baseDark.dialogTheme.copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.indicator,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(backgroundColor: MyColors.indicator),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: MyColors.darkBlue,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
    return darkTheme;
  }
}
