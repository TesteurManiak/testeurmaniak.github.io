import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../models/article_model.dart';
import '../../../about_view/common/blurred_image.dart';
import '../../common/article_date.dart';
import '../../common/article_description.dart';

const _kSpacing = 16.0;

class ArticleCase extends StatelessWidget {
  final ArticleModel article;
  final double? width;

  const ArticleCase(this.article, {Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            TextRenderer(
              text: article.title,
              child: Text(
                article.title,
                style: theme.textTheme.titleLarge,
              ),
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
            ArticleDescription(article.description),
            const SizedBox(height: _kSpacing * 2),
            ArticleDate(article.date),
          ],
        ),
      ),
    );
  }
}
