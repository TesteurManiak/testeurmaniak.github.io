import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/ui/articles_view/common/article_date.dart';
import 'package:my_portfolio/ui/articles_view/common/article_description.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleTile extends StatelessWidget {
  final RssItem article;

  const ArticleTile(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = article.title;
    final description = article.description;
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
                  if (description != null) ArticleDescription(description),
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
