import 'link_data.dart';

class ArticleModel {
  final String title;
  final String? description;
  final LinkData link;

  const ArticleModel({
    required this.title,
    required this.link,
    this.description,
  });
}
