import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/core/mixins/loadable.dart';
import 'package:my_portfolio/core/models/result.dart';
import 'package:my_portfolio/core/models/rss_feed.dart';
import 'package:my_portfolio/features/articles/services/articles_service.dart';

part 'articles_controller.freezed.dart';

class ArticleListController extends Notifier<ArticleListState>
    with LoadableMixin {
  @override
  ArticleListState build() => const ArticleListState.loading();

  @override
  Future<void> load() async {
    state = const ArticleListState.loading();

    final articlesService = ref.read(articlesServiceProvider);
    final result = await articlesService.fetchArticles();

    state = switch (result) {
      Success(value: final success) => ArticleListState.loaded(success),
      Failure(:final error) => ArticleListState.error(error.error ?? ''),
    };
  }
}

final articleListControllerProvider =
    NotifierProvider<ArticleListController, ArticleListState>(() {
      return ArticleListController();
    });

@freezed
sealed class ArticleListState with _$ArticleListState {
  const factory ArticleListState.loading() = ArticleListStateLoading;
  const factory ArticleListState.loaded(List<RssItem> articles) =
      ArticleListStateLoaded;
  const factory ArticleListState.error(String message) = ArticleListStateError;
}
