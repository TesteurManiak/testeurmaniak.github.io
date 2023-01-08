import 'package:flutter/material.dart';
import 'package:my_portfolio/core/articles.dart';
import 'package:my_portfolio/ui/articles_view/desktop/widgets/article_case.dart';

const _kSpacing = 12.0;

class ArticlesDesktop extends StatelessWidget {
  const ArticlesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final caseWidth = size.width * 0.2;

    final crossAxisCount = (size.width / caseWidth).floor();

    return GridView.count(
      padding: const EdgeInsets.all(32),
      mainAxisSpacing: _kSpacing,
      crossAxisSpacing: _kSpacing,
      crossAxisCount: crossAxisCount,
      children: [...articles.map((e) => ArticleCase(e, width: caseWidth))],
    );
  }
}
