import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/widgets/separated_column.dart';
import 'package:my_portfolio/features/articles/controllers/articles_controller.dart';
import 'package:my_portfolio/features/articles/widgets/article_case.dart';
import 'package:shimmer/shimmer.dart';

const _kSpacing = 12.0;

class ArticlesDesktop extends ConsumerWidget {
  const ArticlesDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleListControllerProvider);
    final size = MediaQuery.of(context).size;
    final caseWidth = size.width * 0.2;
    final crossAxisCount = (size.width / caseWidth).floor();

    return state.map(
      loading: (_) {
        return _ShimmerGrid(
          caseWidth: caseWidth,
          crossAxisCount: crossAxisCount,
        );
      },
      loaded: (loaded) {
        final articles = loaded.articles;

        return GridView.builder(
          padding: const EdgeInsets.all(32),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: _kSpacing,
            crossAxisSpacing: _kSpacing,
          ),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ArticleCase(article: article, width: caseWidth);
          },
        );
      },
      error: (error) => Center(child: Text(error.message)),
    );
  }
}

class _ShimmerGrid extends StatelessWidget {
  const _ShimmerGrid({
    required this.crossAxisCount,
    required this.caseWidth,
  });

  final int crossAxisCount;
  final double caseWidth;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: _kSpacing,
      crossAxisSpacing: _kSpacing,
      children: List.generate(
        7,
        (index) => _ShimmerArticleCase(
          width: caseWidth,
        ),
      ),
    );
  }
}

class _ShimmerArticleCase extends StatelessWidget {
  const _ShimmerArticleCase({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const opacity = 0.7;

    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: width),
        child: SeparatedColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          separator: const SizedBox(height: 16),
          children: [
            Container(
              height: textTheme.titleLarge?.fontSize,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: textTheme.titleLarge?.color?.withOpacity(opacity),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white70,
                ),
              ),
            ),
            Container(
              height: textTheme.bodySmall?.fontSize,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: textTheme.bodySmall?.color?.withOpacity(opacity),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
