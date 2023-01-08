import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/root/views/root_desktop.dart';
import 'package:my_portfolio/features/root/views/root_mobile.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: ResponsiveLayoutBuilder(
        mobile: (_) => const RootMobile(),
        desktop: (_) => const RootDesktop(),
      ),
    );
  }
}
