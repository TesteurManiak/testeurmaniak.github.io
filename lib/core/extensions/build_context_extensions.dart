import 'package:flutter/material.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';

extension BuildContextExtensions on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);

  Locale get locale => Localizations.localeOf(this);

  String get localeCode => locale.languageCode;
}
