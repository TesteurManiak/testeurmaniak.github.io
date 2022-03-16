import 'link_data.dart';

class ArticleModel {
  /// Title of the article
  final String title;

  /// Description of the article
  final String? description;

  /// Link to the article
  final LinkData link;

  final String? assetImage;

  /// Release date of the article
  final String? date;

  const ArticleModel({
    required this.title,
    required this.link,
    this.description,
    String? assetImage,
    this.date,
  }) : assetImage = assetImage != null ? 'assets/articles/$assetImage' : null;
}
