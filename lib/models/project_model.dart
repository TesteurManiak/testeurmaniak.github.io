import 'package:flutter/material.dart';

import 'link_data.dart';

@immutable
class ProjectModel {
  final String title;
  final String? description;
  final List<LinkData> links;
  final String? imageAsset;
  final String? iconAsset;

  const ProjectModel({
    required this.title,
    required this.links,
    this.description,
    String? imageAsset,
    String? iconAsset,
  })  : imageAsset = imageAsset != null ? 'assets/projects/$imageAsset' : null,
        iconAsset = iconAsset != null ? 'assets/icons/$iconAsset' : null;
}
