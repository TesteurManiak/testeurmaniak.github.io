import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/style/themes.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';

void main() {
  runApp(BlocProvider(
    blocs: <BlocBase>[],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: MyThemes.dark,
      home: HomeView(),
    );
  }
}
