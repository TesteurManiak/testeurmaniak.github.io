import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleDate extends StatelessWidget {
  final DateTime date;

  const ArticleDate(this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateString = date.toIso8601String();

    return TextRenderer(
      text: dateString,
      child: Text(dateString, style: theme.textTheme.caption),
    );
  }
}
