import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/projects/views/projects_desktop.dart';
import 'package:my_portfolio/features/projects/views/projects_mobile.dart';
import 'package:my_portfolio/style/my_colors.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: ResponsiveLayoutBuilder(
        mobile: (_) => const ProjectsMobile(),
        desktop: (_) => const ProjectsDesktop(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
