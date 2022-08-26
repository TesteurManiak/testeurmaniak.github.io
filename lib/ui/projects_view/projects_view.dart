import 'package:flutter/material.dart';

import '../../style/my_colors.dart';
import '../common/responsive_layout.dart';
import 'desktop/projects_desktop.dart';
import 'mobile/projects_mobile.dart';

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
