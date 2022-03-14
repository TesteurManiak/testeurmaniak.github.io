import 'package:flutter/material.dart';

import 'app.dart';
import 'bloc/bloc.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/navigation_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      blocs: <BlocBase>[NavigationBloc()],
      child: const MyApp(),
    ),
  );
}
