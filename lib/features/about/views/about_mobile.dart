import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about/widgets/about_section.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: size.height * .02,
        children: [const FlutterLogo(size: 200), const AboutSection()],
      ),
    );
  }
}
