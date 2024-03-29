import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/home/views/home_desktop.dart';
import 'package:my_portfolio/features/home/views/home_mobile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ResponsiveLayoutBuilder(
      mobile: (_) => const HomeMobile(),
      desktop: (_) => const HomeDesktop(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
