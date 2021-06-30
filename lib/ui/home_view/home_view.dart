import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';
import 'package:my_portfolio/ui/home_view/desktop/home_desktop.dart';
import 'package:my_portfolio/ui/home_view/mobile/home_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }
}
