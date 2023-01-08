import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleDate extends StatelessWidget {
  final DateTime date;

  const ArticleDate(this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormatter = DateFormat.yMMMMd(context.locale.languageCode);
    final formattedDate = dateFormatter.format(date);

    return TextRenderer(
      text: formattedDate,
      child: Text(formattedDate, style: theme.textTheme.caption),
    );
  }
}
