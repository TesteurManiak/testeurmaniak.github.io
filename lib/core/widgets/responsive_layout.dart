import 'package:flutter/material.dart';

const _kTabletMinWidth = 650.0;
const _kDesktopMinWidth = 1100.0;

class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder? desktop;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < _kTabletMinWidth;
  }

  static bool isTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width < _kDesktopMinWidth && size.width >= _kTabletMinWidth;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= _kDesktopMinWidth;
  }

  @override
  Widget build(BuildContext context) {
    final effectiveTablet = tablet ?? mobile;
    final effectiveDesktop = desktop ?? tablet ?? mobile;

    return LayoutBuilder(
      builder: (context, _) {
        if (isMobile(context)) {
          return mobile(context);
        } else if (isTablet(context)) {
          return effectiveTablet(context);
        }

        return effectiveDesktop(context);
      },
    );
  }
}
