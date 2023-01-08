import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/client/http_client.dart';
import 'package:my_portfolio/core/models/error.dart';
import 'package:my_portfolio/core/models/result.dart';
import 'package:webfeed/webfeed.dart';

final _articlesFeedUri = Uri.parse('https://medium.com/feed/@rouxguillaume');

class ArticlesService {
  ArticlesService({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  Future<Result<AppError, List<RssItem>>> fetchArticles() async {
    final result = await _httpClient.get<String>(_articlesFeedUri);

    return result.map(
      success: (success) {
        final rssFeed = RssFeed.parse(success.value);
        final articles = rssFeed.items ?? [];

        return Result.success(articles);
      },
      failure: (failure) {
        return Result.failure(failure.error);
      },
    );
  }
}

final articlesServiceProvider = Provider<ArticlesService>(
  (ref) {
    final httpClient = ref.watch(httpClientProvider);

    return ArticlesService(
      httpClient: httpClient,
    );
  },
);
