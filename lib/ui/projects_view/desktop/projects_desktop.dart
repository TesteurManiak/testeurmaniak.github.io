import 'package:flutter/material.dart';

import '../../../bloc/bloc_provider.dart';
import '../../../bloc/projects_bloc.dart';
import '../common/project_widget.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final projectsBloc = BlocProvider.of<ProjectsBloc>(context);
    return GridView.count(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      shrinkWrap: true,
      mainAxisSpacing: size.width * 0.05,
      crossAxisSpacing: size.width * 0.05,
      crossAxisCount: 3,
      children:
          projectsBloc.projects.map<Widget>((e) => ProjectWidget(e)).toList(),
    );
  }
}
