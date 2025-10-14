import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/features/articles/widgets/article_date.dart';
import 'package:my_portfolio/features/articles/widgets/article_image.dart';

class ArticleTile extends StatelessWidget {
  const ArticleTile(this.article, {super.key});

  final RssItem article;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = article.title;
    final thumbnail = article.thumbnail;
    final date = article.pubDate;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: article.launch,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    Text(title, style: theme.textTheme.titleMedium),
                  if (thumbnail != null) ArticleImage(src: thumbnail),
                  if (date != null) ArticleDate(date),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
