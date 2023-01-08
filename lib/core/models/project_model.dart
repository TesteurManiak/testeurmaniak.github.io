import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/link_data.dart';

@immutable
class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.links,
    this.description,
    this.imageUrl,
    this.iconUrl,
    this.imageBlurHash,
    this.iconBlurHash,
  })  : assert(
          (imageUrl != null && imageBlurHash != null) || imageUrl == null,
          'You must provide both an imageAsset and an imageBlurHash',
        ),
        assert(
          (iconUrl != null && iconBlurHash != null) || iconUrl == null,
          'You must provide both an iconAsset and an iconBlurHash',
        );

  final String title;
  final String? description;
  final List<LinkData> links;
  final String? imageUrl;
  final String? iconUrl;
  final String? imageBlurHash;
  final String? iconBlurHash;

  bool get hasImage => imageUrl != null && imageBlurHash != null;
  bool get hasIcon => iconUrl != null && iconBlurHash != null;
}
