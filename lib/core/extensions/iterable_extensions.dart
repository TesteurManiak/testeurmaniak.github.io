import 'package:flutter/material.dart';

extension LocaleIterableExtensions on Iterable<Locale> {
  /// Returns the first locale that matches the given [locale.languageCode].
  ///
  /// If no locale matches, returns the first one.
  Locale firstMatch(Locale? locale) {
    return firstWhere(
      (l) => l.languageCode == locale?.languageCode,
      orElse: () => first,
    );
  }
}
