import 'link_data.dart';

class ArticleModel {
  /// Title of the article
  final String title;

  /// Description of the article
  final String description;

  /// Link to the article
  final LinkData link;

  final String assetImage;

  /// Release date of the article
  final String date;

  const ArticleModel({
    required this.title,
    required this.link,
    required this.description,
    required String assetImage,
    required this.date,
  }) : assetImage = 'assets/articles/$assetImage';
}
