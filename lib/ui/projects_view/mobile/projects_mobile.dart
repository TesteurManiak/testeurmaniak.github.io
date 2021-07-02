import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/projects_bloc.dart';
import 'package:my_portfolio/ui/projects_view/common/project_widget.dart';

class ProjectsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final projectsBloc = BlocProvider.of<ProjectsBloc>(context);
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.05,
        horizontal: size.width * 0.05,
      ),
      shrinkWrap: true,
      itemCount: projectsBloc.projects.length,
      itemBuilder: (_, index) => ProjectWidget(projectsBloc.projects[index]),
      separatorBuilder: (_, __) => SizedBox(height: 16),
    );
  }
}
