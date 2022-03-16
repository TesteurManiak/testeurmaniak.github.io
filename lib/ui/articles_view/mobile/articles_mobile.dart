import 'package:flutter/material.dart';

import '../../../core/articles.dart';
import 'widgets/article_tile.dart';

class ArticlesMobile extends StatelessWidget {
  const ArticlesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      itemBuilder: (_, index) => ArticleTile(articles[index]),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: articles.length,
    );
  }
}
