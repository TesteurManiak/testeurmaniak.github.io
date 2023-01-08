import 'package:flutter/material.dart';
import 'package:my_portfolio/models/link_data.dart';

@immutable
class ArticleModel {
  /// Title of the article
  final String title;

  /// Description of the article
  final String description;

  /// Link to the article
  final LinkData link;

  final String imageUrl;
  final String blurHash;

  /// Release date of the article
  final String date;

  const ArticleModel({
    required this.title,
    required this.link,
    required this.description,
    required this.imageUrl,
    required this.blurHash,
    required this.date,
  });
}
