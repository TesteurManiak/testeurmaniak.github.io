import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/features/articles/controllers/articles_controller.dart';
import 'package:my_portfolio/features/articles/widgets/article_tile.dart';
import 'package:my_portfolio/features/articles/widgets/articles_error.dart';
import 'package:my_portfolio/features/articles/widgets/articles_loading_indicator.dart';

class ArticlesMobile extends ConsumerStatefulWidget {
  const ArticlesMobile({super.key});

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
    final size = MediaQuery.sizeOf(context);
    final state = ref.watch(articleListControllerProvider);

    return state.when(
      loading: () => const ArticlesLoadingIndicator(),
      data: (articles) {
        return ListView.separated(
          controller: _scrollController,
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05,
            horizontal: size.width * 0.05,
          ),
          itemBuilder: (_, index) => ArticleTile(articles[index]),
          separatorBuilder: (_, _) => const Divider(),
          itemCount: articles.length,
        );
      },
      error: (e, s) => ArticlesError(e.toString()),
    );
  }
}
