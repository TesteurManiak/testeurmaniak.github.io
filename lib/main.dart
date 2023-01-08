import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:my_portfolio/app.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  runApp(
    RobotDetector(
      child: BlocProvider(
        blocs: <BlocBase>[NavigationBloc()],
        child: const ProviderScope(
          child: MyApp(),
        ),
      ),
    ),
  );
}
