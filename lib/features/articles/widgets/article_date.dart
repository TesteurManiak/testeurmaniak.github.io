import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleDate extends StatelessWidget {
  final String date;

  const ArticleDate(this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextRenderer(
      text: date,
      child: Text(date, style: theme.textTheme.caption),
    );
  }
}
