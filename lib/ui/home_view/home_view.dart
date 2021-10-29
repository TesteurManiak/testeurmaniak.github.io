import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/home_desktop.dart';
import 'mobile/home_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }
}
