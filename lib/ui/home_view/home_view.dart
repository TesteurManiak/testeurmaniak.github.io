import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/home_desktop.dart';
import 'mobile/home_mobile.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const ResponsiveLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
