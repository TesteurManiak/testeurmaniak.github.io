import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';
import 'package:my_portfolio/ui/home_view/desktop/home_desktop.dart';
import 'package:my_portfolio/ui/home_view/mobile/home_mobile.dart';

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
