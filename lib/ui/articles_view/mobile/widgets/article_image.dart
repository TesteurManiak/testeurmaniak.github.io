import 'package:flutter/material.dart';

import '../../../about_view/common/blurred_image.dart';

class ArticleImage extends StatelessWidget {
  final String imageUrl;
  final String blurHash;

  const ArticleImage({
    Key? key,
    required this.imageUrl,
    required this.blurHash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.2;
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BlurredImage(
          blurHash: blurHash,
          imageUrl: imageUrl,
          height: size,
          width: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
