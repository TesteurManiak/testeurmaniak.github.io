import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:seo_renderer/seo_renderer.dart';

class BlurredImage extends StatelessWidget {
  const BlurredImage({
    super.key,
    required this.imageUrl,
    required this.blurHash,
    this.fit = BoxFit.fill,
    this.height,
    this.width,
  });

  final String imageUrl;
  final String blurHash;
  final BoxFit fit;
  final double? height;
  final double? width;

  String get _parsedName {
    final uri = Uri.parse(imageUrl);
    return uri.pathSegments.last;
  }

  @override
  Widget build(BuildContext context) {
    return ImageRenderer(
      alt: _parsedName,
      src: imageUrl,
      child: SizedBox(
        height: height,
        width: width,
        child: BlurHash(
          hash: blurHash,
          image: imageUrl,
          imageFit: fit,
          errorBuilder: (_, error, ___) {
            debugPrint(error.toString());
            return const Center(child: Icon(Icons.error));
          },
        ),
      ),
    );
  }
}
