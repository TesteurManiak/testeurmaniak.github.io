import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';

class TextStyles {
  static TextStyle headerLine(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayoutBuilder.isDesktop(context)
        ? textTheme.displaySmall!
        : textTheme.headlineSmall!;
  }

  static TextStyle headerName(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayoutBuilder.isDesktop(context)
        ? textTheme.displayLarge!
        : textTheme.displaySmall!;
  }

  static TextStyle selectSubHeadline(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ResponsiveLayoutBuilder.isDesktop(context)
        ? textTheme.titleMedium!
        : textTheme.titleSmall!;
  }

  static const tab = TextStyle(fontSize: 16);
}
