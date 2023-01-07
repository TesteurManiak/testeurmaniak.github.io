import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'app.dart';
import 'bloc/bloc.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/navigation_bloc.dart';

void main() {
  usePathUrlStrategy();

  runApp(
    RobotDetector(
      child: BlocProvider(
        blocs: <BlocBase>[NavigationBloc()],
        child: const MyApp(),
      ),
    ),
  );
}
