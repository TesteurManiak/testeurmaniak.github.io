import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/async_loader.dart';

mixin Loadable on Object {
  FutureOr<void> load();
}

class LoadableLoader extends StatelessWidget {
  const LoadableLoader({
    super.key,
    required this.loadable,
    required this.child,
  });

  final Loadable loadable;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AsyncLoader(
      operation: loadable.load,
      child: child,
    );
  }
}
