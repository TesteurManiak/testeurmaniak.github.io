import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../models/article_model.dart';
import '../../common/article_date.dart';
import '../../common/article_description.dart';
import 'article_image.dart';

class ArticleTile extends StatelessWidget {
  final ArticleModel article;

  const ArticleTile(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => launchUrlString(article.link.url),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ArticleImage(
              imageUrl: article.imageUrl,
              blurHash: article.blurHash,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextRenderer(
                    text: article.title,
                    child: Text(
                      article.title,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ArticleDescription(article.description),
                  const SizedBox(height: 8),
                  ArticleDate(article.date),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
