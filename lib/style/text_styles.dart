import 'package:flutter/material.dart';

import '../ui/common/responsive_layout.dart';

class TextStyles {
  static TextStyle headerLine(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayout.isDesktop(context)
        ? textTheme.headline3!
        : textTheme.headline5!;
  }

  static TextStyle headerName(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayout.isDesktop(context)
        ? textTheme.headline1!
        : textTheme.headline3!;
  }

  static TextStyle selectSubHeadline(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayout.isDesktop(context)
        ? textTheme.subtitle1!
        : textTheme.subtitle2!;
  }

  static const tab = TextStyle(fontSize: 16);
}
