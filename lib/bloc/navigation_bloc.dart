import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/ui/about_view/about_view.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';
import 'package:my_portfolio/ui/projects_view/projects_view.dart';
import 'package:rxdart/rxdart.dart';

enum NavigationIndex { home, about, articles, projects }

class _NavigationElement {
  final NavigationIndex index;
  final String label;
  final Widget page;
  final IconData icon;

  const _NavigationElement({
    required this.index,
    required this.label,
    required this.page,
    required this.icon,
  });
}

class NavigationBloc extends BlocBase {
  final _navigationController =
      BehaviorSubject<NavigationIndex>.seeded(NavigationIndex.home);
  Stream<NavigationIndex> get onIndexChanged => _navigationController.stream;
  NavigationIndex get currentIndex => _navigationController.value;

  static final _navElements = <_NavigationElement>[
    _NavigationElement(
      index: NavigationIndex.home,
      label: 'Home',
      page: HomeView(),
      icon: Icons.home,
    ),
    _NavigationElement(
      index: NavigationIndex.about,
      label: 'About',
      page: AboutView(),
      icon: Icons.info,
    ),
    _NavigationElement(
      index: NavigationIndex.articles,
      label: 'Articles',
      page: Container(child: Center(child: Text('Page in construction'))),
      icon: Icons.article,
    ),
    _NavigationElement(
      index: NavigationIndex.projects,
      label: 'Projects',
      page: ProjectsView(),
      icon: Icons.laptop,
    ),
  ];
  List<_NavigationElement> get navigationElements => _navElements;

  late final TabController tabController;

  late final StreamSubscription<NavigationIndex> _streamlistener;

  @override
  void dispose() {
    _streamlistener.cancel();
    _navigationController.close();
    tabController.removeListener(_tabListener);
    tabController.dispose();
  }

  @override
  void initState() {
    _streamlistener = _navigationController.listen((value) {
      tabController.animateTo(value.index);
    });
  }

  void _tabListener() {
    if (tabController.index != currentIndex.index) {
      goToPage(NavigationIndex.values.elementAt(tabController.index));
    }
  }

  void initTabController(TabController controller) {
    tabController = controller;
    tabController.addListener(_tabListener);
  }

  void goToPage(NavigationIndex index) {
    if (index != currentIndex) {
      _navigationController.sink.add(index);
    }
  }
}
