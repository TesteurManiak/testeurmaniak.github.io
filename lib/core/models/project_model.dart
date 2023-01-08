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
  });

  final String title;
  final String? description;
  final List<LinkData> links;
  final String? imageUrl;
  final String? iconUrl;
}
