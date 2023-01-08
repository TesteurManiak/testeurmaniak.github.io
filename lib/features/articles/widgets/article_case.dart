import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/core/widgets/separated_column.dart';
import 'package:my_portfolio/features/articles/widgets/article_date.dart';
import 'package:my_portfolio/features/articles/widgets/article_image.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleCase extends StatelessWidget {
  const ArticleCase({
    super.key,
    required this.article,
    this.width,
  });

  final RssItem article;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final widgetWidth = width ?? MediaQuery.of(context).size.width * 0.2;
    final title = article.title;
    final thumbnail = article.thumbnail;
    final date = article.pubDate;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: article.launch,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: widgetWidth),
        child: SeparatedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          separator: const SizedBox(height: 16),
          children: [
            if (title != null)
              TextRenderer(
                text: article.title,
                child: Text(
                  title,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            if (thumbnail != null)
              Expanded(
                child: ArticleImage(src: thumbnail),
              ),
            if (date != null) ArticleDate(date),
          ],
        ),
      ),
    );
  }
}
