import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/features/about/views/about_view.dart';
import 'package:my_portfolio/features/articles/views/articles_view.dart';
import 'package:my_portfolio/ui/contact_view/contact_view.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';
import 'package:my_portfolio/ui/projects_view/projects_view.dart';
import 'package:rxdart/rxdart.dart';

enum NavigationIndex { home, about, articles, projects, contact }

class NavigationElement {
  final NavigationIndex index;
  final String label;
  final Widget page;
  final IconData icon;

  const NavigationElement({
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

  static const _navElements = <NavigationElement>[
    NavigationElement(
      index: NavigationIndex.home,
      label: 'Home',
      page: HomeView(),
      icon: Icons.home,
    ),
    NavigationElement(
      index: NavigationIndex.about,
      label: 'About',
      page: AboutView(),
      icon: Icons.info,
    ),
    NavigationElement(
      index: NavigationIndex.articles,
      label: 'Articles',
      page: ArticlesView(),
      icon: Icons.article,
    ),
    NavigationElement(
      index: NavigationIndex.projects,
      label: 'Projects',
      page: ProjectsView(),
      icon: Icons.laptop,
    ),
    NavigationElement(
      index: NavigationIndex.contact,
      label: 'Contact',
      page: ContactView(),
      icon: Icons.mail,
    ),
  ];
  List<NavigationElement> get navigationElements => _navElements;

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
