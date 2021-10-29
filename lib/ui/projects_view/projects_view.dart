import 'package:flutter/material.dart';

import '../../style/my_colors.dart';
import '../common/responsive_layout.dart';
import 'desktop/projects_desktop.dart';
import 'mobile/projects_mobile.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: ResponsiveLayout(
        mobile: ProjectsMobile(),
        desktop: ProjectsDesktop(),
      ),
    );
  }
}
