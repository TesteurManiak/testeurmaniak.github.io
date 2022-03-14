import 'package:flutter/material.dart';

import '../../../core/projects.dart';
import '../common/project_widget.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      shrinkWrap: true,
      itemCount: projects.length,
      itemBuilder: (_, index) => ProjectWidget(projects[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}
