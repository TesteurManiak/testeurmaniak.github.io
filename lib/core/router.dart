import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/root/views/root_view.dart';
import 'package:seo_renderer/seo_renderer.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoute.home.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: AppRoute.home.name,
      path: AppRoute.home.path,
      builder: (_, __) => const RootView(),
    ),
  ],
  errorBuilder: (_, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString(), textAlign: TextAlign.center),
    ),
  ),
  observers: [seoRouteObserver],
);

enum AppRoute {
  home('/');

  const AppRoute(this.path);

  final String path;
}
