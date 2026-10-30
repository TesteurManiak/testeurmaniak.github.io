import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/article.dart';

final _feedUri = Uri.parse(
  'https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@rouxguillaume',
);

Future<List<Article>> fetchArticles() async {
  final response = await http.get(_feedUri);
  if (response.statusCode != 200) {
    throw Exception('Unexpected status code ${response.statusCode}');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final items = json['items'] as List<dynamic>? ?? const [];

  return [
    for (final item in items) Article.fromJson(item as Map<String, dynamic>),
  ];
}
