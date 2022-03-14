import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyThemes {
  static final _baseDark = ThemeData.dark();

  static ThemeData get dark {
    final _dark = _baseDark.copyWith(
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
          primary: MyColors.indicator,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: MyColors.indicator),
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
    return _dark;
  }
}
