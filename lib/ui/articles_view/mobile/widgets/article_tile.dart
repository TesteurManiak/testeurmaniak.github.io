import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../models/article_model.dart';
import 'article_image.dart';

class ArticleTile extends StatelessWidget {
  final ArticleModel article;

  const ArticleTile(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desc = article.description;
    final asset = article.assetImage;
    final date = article.date;

    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => launchUrlString(article.link.url),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ArticleImage(asset),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextRenderer(
                    child: Text(
                      article.title,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextRenderer(
                    child: Text(
                      desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.subtitle2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextRenderer(
                    child: Text(
                      date,
                      style: theme.textTheme.caption,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
