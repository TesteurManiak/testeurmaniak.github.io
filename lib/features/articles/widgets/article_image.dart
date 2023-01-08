import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return ImageRenderer(
      alt: src,
      src: src,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          src,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
