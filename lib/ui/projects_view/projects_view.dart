import 'package:flutter/material.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';
import 'package:my_portfolio/ui/projects_view/desktop/projects_desktop.dart';
import 'package:my_portfolio/ui/projects_view/mobile/projects_mobile.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: ResponsiveLayout(
        mobile: ProjectsMobile(),
        desktop: ProjectsDesktop(),
      ),
    );
  }
}
