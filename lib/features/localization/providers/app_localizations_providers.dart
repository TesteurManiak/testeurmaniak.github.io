import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/extensions/iterable_extensions.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';

class AppLocalizationsController extends StateNotifier<Locale> {
  AppLocalizationsController({
    required this.supportedLocales,
  }) : super(ui.PlatformDispatcher.instance.locale);

  final List<Locale> supportedLocales;

  void setLocale(Locale locale) {
    state = supportedLocales.firstMatch(locale);
  }
}

final appLocalizationsControllerProvider =
    StateNotifierProvider<AppLocalizationsController, Locale>((ref) {
  return AppLocalizationsController(
    supportedLocales: ref.watch(supportedLocalesProvider),
  );
});

final supportedLocalesProvider =
    Provider<List<Locale>>((ref) => AppLocalizations.supportedLocales);

final appLocalizationsProvider = Provider<AppLocalizations>((ref) {
  final locale = ui.PlatformDispatcher.instance.locale;

  ref.state = lookupAppLocalizations(locale);

  final observer = _LocaleObserver((locales) {
    ref.state = lookupAppLocalizations(locale);
  });
  final binding = WidgetsBinding.instance..addObserver(observer);

  ref.onDispose(() => binding.removeObserver(observer));

  return ref.state;
});

class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);

  final void Function(List<Locale>? locales) _didChangeLocales;

  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}
