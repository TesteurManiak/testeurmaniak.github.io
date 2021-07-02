import 'package:my_portfolio/models/link_data.dart';

class ProjectModel {
  final String title;
  final String? description;
  final List<LinkData> links;

  ProjectModel({
    required this.title,
    required this.links,
    this.description,
  });
}
