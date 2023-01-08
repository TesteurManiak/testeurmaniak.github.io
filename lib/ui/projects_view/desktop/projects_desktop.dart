import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/sources/projects.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsDesktop extends ConsumerWidget {
  const ProjectsDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final projects = ref.watch(projectsProvider);

    return GridView.builder(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: size.width * 0.05,
        crossAxisSpacing: size.width * 0.05,
        crossAxisCount: 3,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) => ProjectWidget(projects[index]),
    );
  }
}
