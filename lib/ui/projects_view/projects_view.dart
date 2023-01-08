import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/ui/projects_view/desktop/projects_desktop.dart';
import 'package:my_portfolio/ui/projects_view/mobile/projects_mobile.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: ResponsiveLayout(
        mobile: ProjectsMobile(),
        desktop: ProjectsDesktop(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
