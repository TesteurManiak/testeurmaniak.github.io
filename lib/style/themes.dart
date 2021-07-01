import 'package:flutter/material.dart';
import 'package:my_portfolio/style/my_colors.dart';

class MyThemes {
  static final _baseDark = ThemeData.dark();
  static final _baseLight = ThemeData.light();

  static ThemeData get dark {
    final _dark = _baseDark.copyWith(
      scaffoldBackgroundColor: MyColors.scaffold,
      appBarTheme: _baseDark.appBarTheme.copyWith(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      indicatorColor: MyColors.indicator,
    );
    return _dark;
  }

  static ThemeData get light {
    final _light = _baseLight.copyWith();
    return _light;
  }
}
