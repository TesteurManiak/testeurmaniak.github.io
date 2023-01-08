import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/features/articles/controllers/articles_controller.dart';
import 'package:my_portfolio/features/articles/widgets/article_tile.dart';
import 'package:my_portfolio/features/articles/widgets/articles_error.dart';
import 'package:my_portfolio/features/articles/widgets/articles_loading_indicator.dart';

class ArticlesMobile extends ConsumerStatefulWidget {
  const ArticlesMobile({Key? key}) : super(key: key);

  @override
  ConsumerState<ArticlesMobile> createState() => _ArticlesMobileState();
}

class _ArticlesMobileState extends ConsumerState<ArticlesMobile> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final state = ref.watch(articleListControllerProvider);

    return state.map(
      loading: (_) => const ArticlesLoadingIndicator(),
      loaded: (loaded) {
        final articles = loaded.articles;

        return ListView.separated(
          controller: _scrollController,
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05,
            horizontal: size.width * 0.05,
          ),
          itemBuilder: (_, index) => ArticleTile(articles[index]),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: articles.length,
        );
      },
      error: (error) => ArticlesError(error.message),
    );
  }
}
