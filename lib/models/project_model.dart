import 'package:my_portfolio/models/link_data.dart';

class ProjectModel {
  final String title;
  final String? description;
  final List<LinkData> links;
  final String? imageAsset;

  ProjectModel({
    required this.title,
    required this.links,
    this.description,
    this.imageAsset,
  });
}