import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/features/articles/widgets/article_date.dart';
import 'package:my_portfolio/features/articles/widgets/article_image.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleTile extends StatelessWidget {
  final RssItem article;

  const ArticleTile(this.article, {Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    TextRenderer(
                      text: article.title,
                      child: Text(
                        title,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  const SizedBox(height: 8),
                  if (thumbnail != null) ArticleImage(src: thumbnail),
                  const SizedBox(height: 8),
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
