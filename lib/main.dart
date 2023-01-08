import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:my_portfolio/app.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  runApp(
    const RobotDetector(
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
