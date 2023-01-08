import 'package:flutter/material.dart';
import 'package:my_portfolio/core/router.dart';
import 'package:my_portfolio/style/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Guillaume Roux - Flutter Developer',
      theme: MyThemes.dark,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
