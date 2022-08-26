import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class ArticleDescription extends StatelessWidget {
  final String description;

  const ArticleDescription(this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextRenderer(
      text: description,
      child: Text(
        description,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.subtitle2,
        maxLines: 3,
      ),
    );
  }
}
