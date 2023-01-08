import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/about/views/about_desktop.dart';
import 'package:my_portfolio/features/about/views/about_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      mobile: (_) => const AboutMobile(),
      desktop: (_) => const AboutDesktop(),
    );
  }
}
