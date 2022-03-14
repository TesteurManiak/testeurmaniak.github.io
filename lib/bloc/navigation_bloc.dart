import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../ui/about_view/about_view.dart';
import '../ui/contact_view/contact_view.dart';
import '../ui/home_view/home_view.dart';
import '../ui/projects_view/projects_view.dart';
import 'bloc.dart';

enum NavigationIndex { home, about, articles, projects, contact }

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

  static const _navElements = <_NavigationElement>[
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
      page: Center(child: Text('Page in construction')),
      icon: Icons.article,
    ),
    _NavigationElement(
      index: NavigationIndex.projects,
      label: 'Projects',
      page: ProjectsView(),
      icon: Icons.laptop,
    ),
    _NavigationElement(
      index: NavigationIndex.contact,
      label: 'Contact',
      page: ContactView(),
      icon: Icons.mail,
    ),
  ];
  List<_NavigationElement> get navigationElements => _navElements;

  @override
  void dispose() {
    _navigationController.close();
  }

  @override
  void initState() {}

  void goToPage(NavigationIndex index) {
    if (index != currentIndex) {
      _navigationController.sink.add(index);
    }
  }
}
