import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/sources/projects.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsMobile extends ConsumerWidget {
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final projects = ref.watch(projectsProvider);

    return ListView.separated(
      addAutomaticKeepAlives: true,
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
