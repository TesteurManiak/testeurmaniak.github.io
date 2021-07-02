import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/projects_bloc.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsDesktop extends StatelessWidget {
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
