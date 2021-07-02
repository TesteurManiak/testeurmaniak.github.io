import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';
import 'package:my_portfolio/ui/projects_view/projects_view.dart';
import 'package:rxdart/rxdart.dart';

enum NavigationIndex { home, about, projects }

class _NavigationElement {
  final NavigationIndex index;
  final String label;
  final Widget page;

  const _NavigationElement({
    required this.index,
    required this.label,
    required this.page,
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
    ),
    _NavigationElement(
      index: NavigationIndex.about,
      label: 'About',
      page: Container(),
    ),
    _NavigationElement(
      index: NavigationIndex.projects,
      label: 'Projects',
      page: ProjectsView(),
    ),
  ];
  List<_NavigationElement> get navigationElements => _navElements;

  late final TabController tabController;

  @override
  void dispose() {
    _navigationController.close();
  }

  @override
  void initState() {
    _navigationController.listen((value) {
      tabController.animateTo(value.index);
    });
  }

  void initTabController(TabController controller) {
    tabController = controller;
    tabController.addListener(() {
      if (tabController.index != currentIndex.index) {
        goToPage(NavigationIndex.values.elementAt(tabController.index));
      }
    });
  }

  void goToPage(NavigationIndex index) {
    if (index != currentIndex) {
      _navigationController.sink.add(index);
    }
  }
}
