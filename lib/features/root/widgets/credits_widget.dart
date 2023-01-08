import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

class CreditsWidget extends StatelessWidget {
  const CreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BuiltWithFlutterCornerBanner(
      bannerPosition: CornerBannerPosition.topLeft,
      bannerColor: const Color(0xFF222222),
      shadowColor: Colors.black.withOpacity(0.8),
      elevation: 5,
    );
  }
}
