import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../models/article_model.dart';

class ArticleTile extends StatelessWidget {
  final ArticleModel article;

  const ArticleTile(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desc = article.description;
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => launch(article.link.url),
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(article.title, style: theme.textTheme.titleMedium),
                  if (desc != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        desc,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.subtitle2,
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
