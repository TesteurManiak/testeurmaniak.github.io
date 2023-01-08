import 'package:flutter/material.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/ui/about_view/common/blurred_image.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';

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
        child: const ColorFiltered(
          colorFilter: ColorFilter.mode(
            MyColors.scaffold,
            BlendMode.color,
          ),
          child: BlurredImage(
            imageUrl:
                'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/avatar.png',
            blurHash: 'LMF%|0tN2~xsHInl-.Na04ay[1n+',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
