import 'package:flutter/material.dart';
import 'package:my_portfolio/core/projects.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      controller: _scrollController,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      itemCount: projects.length,
      itemBuilder: (_, index) => ProjectWidget(projects[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}
