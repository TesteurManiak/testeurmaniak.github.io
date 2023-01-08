import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_portfolio/core/client/http_client.dart';

final _articlesFeedUri = Uri.parse(
  'https://cors-anywhere.herokuapp.com/https://medium.com/feed/@rouxguillaume',
);

class ArticleListController extends StateNotifier<ArticleListState> {
  ArticleListController(
    super.value, {
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  Future<void> fetchArticles() async {
    final articles = await _httpClient.get(_articlesFeedUri);
  }
}

// final articleListControllerProvider =
//     StateNotifierProvider<ArticleListController, ArticleListState>(
//   (ref) {
//     final httpClient = ref.watch(httpClientProvider);
//     return ArticleListController();
//   },
// );

@freezed
class ArticleListState {}
