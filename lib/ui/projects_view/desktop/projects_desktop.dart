import 'package:flutter/material.dart';
import 'package:my_portfolio/core/projects.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({super.key});

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.count(
      controller: _scrollController,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      shrinkWrap: true,
      mainAxisSpacing: size.width * 0.05,
      crossAxisSpacing: size.width * 0.05,
      crossAxisCount: 3,
      children: projects.map<Widget>(ProjectWidget.new).toList(),
    );
  }
}
