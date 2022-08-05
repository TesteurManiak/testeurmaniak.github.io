import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

import 'app.dart';
import 'bloc/bloc.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/navigation_bloc.dart';

void main() {
  runApp(
    RobotDetector(
      debug: kDebugMode,
      child: BlocProvider(
        blocs: <BlocBase>[NavigationBloc()],
        child: const MyApp(),
      ),
    ),
  );
}
