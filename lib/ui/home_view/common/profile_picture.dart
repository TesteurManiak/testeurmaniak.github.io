import 'package:flutter/material.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgSize = ResponsiveLayout.isDesktop(context) ? 400.0 : 250.0;
    return Container(
      height: imgSize,
      width: imgSize,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imgSize / 2),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            MyColors.scaffold,
            BlendMode.color,
          ),
          child: Image.asset(
            'assets/avatar.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
