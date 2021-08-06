import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/bloc/projects_bloc.dart';
import 'package:my_portfolio/style/themes.dart';
import 'package:my_portfolio/ui/root_view/root_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(BlocProvider(
    blocs: <BlocBase>[
      NavigationBloc(),
      ProjectsBloc(),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: MyThemes.dark,
      home: RootView(),
    );
  }
}
