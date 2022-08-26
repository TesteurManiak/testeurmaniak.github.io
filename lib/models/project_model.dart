import 'package:flutter/material.dart';

import 'link_data.dart';

@immutable
class ProjectModel {
  final String title;
  final String? description;
  final List<LinkData> links;
  final String? imageUrl;
  final String? iconAsset;
  final String? imageBlurHash;

  bool get hasImage => imageUrl != null && imageBlurHash != null;

  const ProjectModel({
    required this.title,
    required this.links,
    this.description,
    this.imageUrl,
    String? iconAsset,
    this.imageBlurHash,
  })  : iconAsset = iconAsset != null ? 'assets/icons/$iconAsset' : null,
        assert(
          (imageUrl != null && imageBlurHash != null) || imageUrl == null,
          'You must provide both an imageAsset and an imageBlurHash',
        );
}
