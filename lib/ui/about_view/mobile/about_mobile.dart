import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/about_view/common/about_section.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          FlutterLogo(size: 250),
          SizedBox(height: size.height * 0.02),
          AboutSection(),
        ],
      ),
    );
  }
}
