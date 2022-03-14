import 'dart:async';

import 'package:flutter/material.dart';

import '../../bloc/bloc_provider.dart';
import '../../bloc/navigation_bloc.dart';
import '../common/responsive_layout.dart';
import 'desktop/root_desktop.dart';
import 'mobile/root_mobile.dart';

class RootView extends StatefulWidget {
  static const routeName = 'root';

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
