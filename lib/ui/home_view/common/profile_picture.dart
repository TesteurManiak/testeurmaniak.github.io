import 'package:flutter/material.dart';

import '../../../style/my_colors.dart';
import '../../common/responsive_layout.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgSize = ResponsiveLayout.isDesktop(context) ? 400.0 : 250.0;
    return SizedBox(
      height: imgSize,
      width: imgSize,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imgSize / 2),
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
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
