import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({super.key, required this.src});

  final String src;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(src, fit: BoxFit.cover),
    );
  }
}
