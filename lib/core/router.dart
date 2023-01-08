import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/ui/root_view/root_view.dart';
import 'package:seo_renderer/seo_renderer.dart';

GoRouter routerGenerator({String? initialLocation}) => GoRouter(
      initialLocation: initialLocation ?? AppRoute.root.path,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: AppRoute.root.name,
          path: AppRoute.root.path,
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
  root('/');

  final String path;
  const AppRoute(this.path);
}
