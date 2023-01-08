import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about/widgets/about_section.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const FlutterLogo(size: 200),
          SizedBox(height: size.height * 0.02),
          const AboutSection(),
        ],
      ),
    );
  }
}
