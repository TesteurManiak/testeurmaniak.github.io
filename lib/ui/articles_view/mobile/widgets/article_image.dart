import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  final String imageAsset;

  const ArticleImage(this.imageAsset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.2;
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imageAsset,
          height: size,
          width: size,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
