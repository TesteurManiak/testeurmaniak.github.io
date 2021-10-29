import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/about_desktop.dart';
import 'mobile/about_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
