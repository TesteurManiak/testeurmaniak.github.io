import 'link_data.dart';

class ArticleModel {
  final String title;
  final String? description;
  final LinkData link;
  final String? assetImage;

  const ArticleModel({
    required this.title,
    required this.link,
    this.description,
    this.assetImage,
  });
}
