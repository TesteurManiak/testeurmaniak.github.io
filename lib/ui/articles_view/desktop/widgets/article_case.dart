import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../models/article_model.dart';
import '../../../about_view/common/blurred_image.dart';

const _kSpacing = 16.0;

class ArticleCase extends StatelessWidget {
  final ArticleModel article;
  final double? width;

  const ArticleCase(this.article, {Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desc = article.description;
    final date = article.date;

    final theme = Theme.of(context);
    final widgetWidth = width ?? MediaQuery.of(context).size.width * 0.2;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => launchUrlString(article.link.url),
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: widgetWidth),
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
                child: BlurredImage(
                  blurHash: article.blurHash,
                  imageUrl: article.imageUrl,
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
            Text(date, style: theme.textTheme.caption),
          ],
        ),
      ),
    );
  }
}
