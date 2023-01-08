import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/ui/articles_view/services/articles_service.dart';
import 'package:webfeed/webfeed.dart';

part 'articles_controller.freezed.dart';

class ArticleListController extends StateNotifier<ArticleListState> {
  ArticleListController({
    required ArticlesService articlesService,
  })  : _articlesService = articlesService,
        super(const ArticleListState.loading());

  final ArticlesService _articlesService;

  Future<void> fetchArticles() async {
    state = const ArticleListState.loading();

    final result = await _articlesService.fetchArticles();
    result.map(
      success: (success) {
        state = ArticleListState.loaded(success.value);
      },
      failure: (failure) {
        state = ArticleListState.error(failure.error.error ?? '');
      },
    );
  }
}

final articleListControllerProvider =
    StateNotifierProvider<ArticleListController, ArticleListState>(
  (ref) {
    final articlesService = ref.watch(articlesServiceProvider);

    return ArticleListController(
      articlesService: articlesService,
    );
  },
);

@freezed
class ArticleListState with _$ArticleListState {
  const factory ArticleListState.loading() = _Loading;
  const factory ArticleListState.loaded(List<RssItem> articles) = _Loaded;
  const factory ArticleListState.error(String message) = _Error;
}
