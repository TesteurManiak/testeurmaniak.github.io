import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about/widgets/about_section.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      spacing: size.width * .03,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: size.width * .45, child: const AboutSection()),
        const FlutterLogo(size: 400),
      ],
    );
  }
}
