import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/models/result.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/features/articles/services/articles_service.dart';

class ArticleListController extends AsyncNotifier<List<RssItem>> {
  @override
  Future<List<RssItem>> build() async {
    final articlesService = ref.read(articlesServiceProvider);
    final result = await articlesService.fetchArticles();

    return switch (result) {
      Success(value: final success) => success,
      Failure(:final error) => throw error,
    };
  }
}

final articleListControllerProvider =
    AsyncNotifierProvider<ArticleListController, List<RssItem>>(() {
      return ArticleListController();
    });
