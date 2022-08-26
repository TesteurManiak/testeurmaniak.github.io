import 'package:flutter/material.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

import 'core/router.dart';
import 'style/themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final _router = routerGenerator();

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: MaterialApp.router(
        title: 'Guillaume Roux - Flutter Developer',
        theme: MyThemes.dark,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      ),
    );
  }
}
