import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/ui/articles_view/common/article_date.dart';
import 'package:my_portfolio/ui/articles_view/common/article_description.dart';
import 'package:seo_renderer/seo_renderer.dart';

const _kSpacing = 16.0;

class ArticleCase extends StatelessWidget {
  final RssItem article;
  final double? width;

  const ArticleCase(this.article, {Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final widgetWidth = width ?? MediaQuery.of(context).size.width * 0.2;
    final title = article.title;
    final description = article.description;
    final date = article.pubDate;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: article.launch,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: widgetWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              TextRenderer(
                text: article.title,
                child: Text(
                  title,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            const SizedBox(height: _kSpacing),
            if (description != null) ArticleDescription(description),
            const SizedBox(height: _kSpacing * 2),
            if (date != null) ArticleDate(date),
          ],
        ),
      ),
    );
  }
}
