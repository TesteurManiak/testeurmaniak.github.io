import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_portfolio/ui/articles_view/controller/articles_controller.dart';
import 'package:my_portfolio/ui/articles_view/desktop/widgets/article_case.dart';

const _kSpacing = 12.0;

class ArticlesDesktop extends ConsumerWidget {
  const ArticlesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListControllerProvider);
    final size = MediaQuery.of(context).size;

    return state.map(
      loading: (_) => const Center(child: CircularProgressIndicator()),
      loaded: (loaded) {
        final caseWidth = size.width * 0.2;
        final crossAxisCount = (size.width / caseWidth).floor();
        final articles = loaded.articles;

        return MasonryGridView.count(
          // padding: const EdgeInsets.all(32),
          mainAxisSpacing: _kSpacing,
          crossAxisSpacing: _kSpacing,
          crossAxisCount: crossAxisCount,
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ArticleCase(article, width: caseWidth);
          },
        );
      },
      error: (error) => Center(child: Text(error.message)),
    );
  }
}
