import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/features/articles/widgets/article_date.dart';
import 'package:my_portfolio/features/articles/widgets/article_image.dart';

class ArticleCase extends StatelessWidget {
  const ArticleCase({super.key, required this.article, this.width});

  final RssItem article;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final widgetWidth = width ?? MediaQuery.sizeOf(context).width * 0.2;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: article.launch,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: widgetWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            if (article.title case final title?)
              Text(title, style: theme.textTheme.titleLarge),
            if (article.thumbnail case final thumbnail?)
              Expanded(child: ArticleImage(src: thumbnail)),
            if (article.pubDate case final date?) ArticleDate(date),
          ],
        ),
      ),
    );
  }
}
