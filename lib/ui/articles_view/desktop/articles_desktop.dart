import 'package:flutter/material.dart';

import '../../../core/articles.dart';
import '../../common/smooth_scroll.dart';
import 'widgets/article_case.dart';

const _kSpacing = 12.0;

class ArticlesDesktop extends StatefulWidget {
  const ArticlesDesktop({Key? key}) : super(key: key);

  @override
  State<ArticlesDesktop> createState() => _ArticlesDesktopState();
}

class _ArticlesDesktopState extends State<ArticlesDesktop> {
  final _controller = SmoothScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final caseWidth = size.width * 0.2;

    final crossAxisCount = (size.width / caseWidth).floor();

    return GridView.count(
      controller: SmoothScrollController(),
      padding: const EdgeInsets.all(32),
      mainAxisSpacing: _kSpacing,
      crossAxisSpacing: _kSpacing,
      crossAxisCount: crossAxisCount,
      children: [...articles.map((e) => ArticleCase(e, width: caseWidth))],
    );
  }
}
