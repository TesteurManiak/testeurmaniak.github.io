import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/extensions/iterable_extensions.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';

class AppLocalizationsController extends Notifier<Locale> {
  AppLocalizationsController();

  @override
  ui.Locale build() => ui.PlatformDispatcher.instance.locale;

  void setLocale(Locale locale) {
    final supportedLocales = ref.read(supportedLocalesProvider);
    state = supportedLocales.firstMatch(locale);
  }
}

final appLocalizationsControllerProvider =
    NotifierProvider<AppLocalizationsController, Locale>(() {
      return AppLocalizationsController();
    });

final supportedLocalesProvider = Provider<List<Locale>>(
  (ref) => AppLocalizations.supportedLocales,
);

final appLocalizationsProvider = Provider<AppLocalizations>((ref) {
  final locale = ui.PlatformDispatcher.instance.locale;
  final strings = lookupAppLocalizations(locale);

  final observer = _LocaleObserver((locales) {
    ref.invalidateSelf();
  });

  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));

  return strings;
});

class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);

  final void Function(List<Locale>? locales) _didChangeLocales;

  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}
