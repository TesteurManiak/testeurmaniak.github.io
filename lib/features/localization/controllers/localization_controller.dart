import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class LocalizationController extends StateNotifier<Locale?> {}

final supportedLocalesProvider = Provider<List<Locale>>((ref) {
  return [
    const Locale('en', 'US'),
    const Locale('fr', 'FR'),
  ];
});
