import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/root_view/root_view.dart';

GoRouter routerGenerator({String? initialLocation}) => GoRouter(
      initialLocation: initialLocation ?? Routes.root,
      debugLogDiagnostics: true,
      urlPathStrategy: UrlPathStrategy.path,
      routes: [
        GoRoute(
          name: RootView.routeName,
          path: Routes.root,
          builder: (_, __) => const RootView(),
        ),
      ],
      errorBuilder: (_, state) => Scaffold(
        body: Center(
          child: Text(state.error.toString(), textAlign: TextAlign.center),
        ),
      ),
    );

class Routes {
  static const root = '/';
}
