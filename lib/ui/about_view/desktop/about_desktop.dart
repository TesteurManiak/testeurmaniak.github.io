import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/about_view/common/about_section.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.45,
          child: AboutSection(),
        ),
        SizedBox(width: size.width * 0.03),
        FlutterLogo(size: 400),
      ],
    );
  }
}
