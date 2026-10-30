import 'link_data.dart';

class Project {
  const Project({
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
