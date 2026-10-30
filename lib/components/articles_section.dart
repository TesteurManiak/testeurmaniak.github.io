import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../l10n/strings.dart';
import '../models/article.dart';
import '../services/articles_service.dart';

class ArticlesSection extends StatefulComponent {
  const ArticlesSection({required this.strings, super.key});

  final AppStrings strings;

  @override
  State<ArticlesSection> createState() => _ArticlesSectionState();
}

class _ArticlesSectionState extends State<ArticlesSection> {
  List<Article>? _articles;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) _load();
  }

  Future<void> _load() async {
    try {
      final articles = await fetchArticles();
      if (mounted) setState(() => _articles = articles);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  @override
  Component build(BuildContext context) {
    final articles = _articles;

    if (_failed) {
      return div(classes: 'articles-message', [
        Component.text(component.strings.articlesError),
      ]);
    }

    if (articles == null) {
      return div(classes: 'articles', [
        for (var i = 0; i < 7; i++)
          div(classes: 'article skeleton', [
            div(classes: 'skeleton-line', []),
            div(classes: 'skeleton-image', []),
            div(classes: 'skeleton-line skeleton-short', []),
          ]),
      ]);
    }

    return div(classes: 'articles', [
      for (final article in articles) _ArticleCard(article, component.strings),
    ]);
  }
}

class _ArticleCard extends StatelessComponent {
  const _ArticleCard(this.article, this.strings);

  final Article article;
  final AppStrings strings;

  @override
  Component build(BuildContext context) {
    final title = article.title;
    final thumbnail = article.thumbnail;
    final date = article.pubDate;

    return a(
      href: article.link ?? '#',
      target: Target.blank,
      classes: 'article',
      [
        if (title != null) h3([Component.text(title)]),
        if (thumbnail != null)
          img(src: thumbnail, alt: '', loading: MediaLoading.lazy),
        if (date != null)
          span(classes: 'article-date', [
            Component.text(strings.formatDate(date)),
          ]),
      ],
    );
  }
}
