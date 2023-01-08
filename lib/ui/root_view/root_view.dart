import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/ui/root_view/desktop/root_desktop.dart';
import 'package:my_portfolio/ui/root_view/mobile/root_mobile.dart';

class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RootViewState();
}

class _RootViewState extends State<RootView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final _navigationBloc = BlocProvider.of<NavigationBloc>(context);
  late final StreamSubscription<NavigationIndex> _navSubscription;

  void _tabListener() => _navigationBloc
      .goToPage(NavigationIndex.values.elementAt(_tabController.index));

  void _indexChangeListener(NavigationIndex index) {
    if (index.index != _tabController.index) {
      _tabController.animateTo(index.index);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _navigationBloc.navigationElements.length,
      vsync: this,
      initialIndex: _navigationBloc.currentIndex.index,
    )..addListener(_tabListener);

    _navSubscription =
        _navigationBloc.onIndexChanged.listen(_indexChangeListener);
  }

  @override
  void dispose() {
    _navSubscription.cancel();
    _tabController.removeListener(_tabListener);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RootMobile(controller: _tabController),
      desktop: RootDesktop(controller: _tabController),
    );
  }
}
