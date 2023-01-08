import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/root/views/root_desktop.dart';
import 'package:my_portfolio/features/root/views/root_mobile.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: ResponsiveLayout(
        mobile: RootMobile(),
        desktop: RootDesktop(),
      ),
    );
  }
}
