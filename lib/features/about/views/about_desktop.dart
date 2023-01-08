import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about/widgets/about_section.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.45,
          child: const AboutSection(),
        ),
        SizedBox(width: size.width * 0.03),
        const FlutterLogo(size: 400),
      ],
    );
  }
}
