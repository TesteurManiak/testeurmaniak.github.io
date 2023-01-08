import 'dart:async';

import 'package:flutter/material.dart';

typedef AsyncLoaderCallback = FutureOr<void> Function();

class AsyncLoader extends StatefulWidget {
  const AsyncLoader({
    super.key,
    required this.operation,
    required this.child,
  });

  final AsyncLoaderCallback operation;
  final Widget child;

  @override
  State<AsyncLoader> createState() => _AsyncLoaderState();
}

class _AsyncLoaderState extends State<AsyncLoader> {
  @override
  void initState() {
    super.initState();
    widget.operation();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
