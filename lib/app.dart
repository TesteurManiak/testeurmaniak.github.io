import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/extensions/iterable_extensions.dart';
import 'package:my_portfolio/core/router.dart';
import 'package:my_portfolio/features/localization/providers/app_localizations_providers.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';
import 'package:my_portfolio/style/themes.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationsControllerProvider);
    final supportedLocales = ref.watch(supportedLocalesProvider);

    return MaterialApp.router(
      title: 'Guillaume Roux - Flutter Developer',
      theme: MyThemes.dark,
      darkTheme: MyThemes.dark,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        return supportedLocales.firstMatch(locale);
      },
    );
  }
}
