import 'package:flutter/material.dart';

class ArticlesMobile extends StatefulWidget {
  const ArticlesMobile({Key? key}) : super(key: key);

  @override
  State<ArticlesMobile> createState() => _ArticlesMobileState();
}

class _ArticlesMobileState extends State<ArticlesMobile> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      controller: _scrollController,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      itemBuilder: (_, index) => Container(),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: 0,
    );
  }
}
