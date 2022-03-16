import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../models/article_model.dart';

const _kSpacing = 16.0;

class ArticleCase extends StatelessWidget {
  final ArticleModel article;
  final double? width;

  const ArticleCase(this.article, {Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asset = article.assetImage;
    final desc = article.description;
    final date = article.date;

    final theme = Theme.of(context);
    final _width = width ?? MediaQuery.of(context).size.width * 0.2;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => launch(article.link.url),
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: _width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              article.title,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: _kSpacing),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  asset,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: _kSpacing),
            Text(
              desc,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.subtitle2,
              maxLines: 3,
            ),
            const SizedBox(height: _kSpacing * 2),
            Text(
              date,
              style: theme.textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
