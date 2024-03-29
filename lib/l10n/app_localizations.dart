import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @home_tab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_tab;

  /// No description provided for @about_tab.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about_tab;

  /// No description provided for @articles_tab.
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get articles_tab;

  /// No description provided for @projects_tab.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects_tab;

  /// No description provided for @contact_tab.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact_tab;

  /// No description provided for @home_header_hello.
  ///
  /// In en, this message translates to:
  /// **'Hello, I am'**
  String get home_header_hello;

  /// No description provided for @home_header_position.
  ///
  /// In en, this message translates to:
  /// **'Flutter Software Engineer'**
  String get home_header_position;

  /// No description provided for @global_firstname.
  ///
  /// In en, this message translates to:
  /// **'Guillaume'**
  String get global_firstname;

  /// No description provided for @global_lastname.
  ///
  /// In en, this message translates to:
  /// **'Roux'**
  String get global_lastname;

  /// No description provided for @home_find_me_on.
  ///
  /// In en, this message translates to:
  /// **'Find me on'**
  String get home_find_me_on;

  /// No description provided for @contact_me.
  ///
  /// In en, this message translates to:
  /// **'Contact me'**
  String get contact_me;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @about_section_title.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get about_section_title;

  /// No description provided for @about_section_description.
  ///
  /// In en, this message translates to:
  /// **'I\'ve been using Flutter since September 2018. Since then I\'ve been able to work on a lot of projects each with its own problematics. You will find on this website some applications made during my spare time and some made as part of my job as a mobile developer. You will also find some articles related to Dart and Flutter that I am writting on the site Medium.com and Dart/Flutter packages I have released on Pub.dev.'**
  String get about_section_description;

  /// No description provided for @contact_section_title.
  ///
  /// In en, this message translates to:
  /// **'Let\'s get in touch!'**
  String get contact_section_title;

  /// No description provided for @contact_section_firstname.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get contact_section_firstname;

  /// No description provided for @contact_section_lastname.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get contact_section_lastname;

  /// No description provided for @contact_section_message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get contact_section_message;

  /// No description provided for @contact_section_message_hint.
  ///
  /// In en, this message translates to:
  /// **'Type your message here'**
  String get contact_section_message_hint;

  /// No description provided for @contact_section_send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get contact_section_send;

  /// No description provided for @my_resume_button.
  ///
  /// In en, this message translates to:
  /// **'See my resume'**
  String get my_resume_button;

  /// No description provided for @my_resume_link.
  ///
  /// In en, this message translates to:
  /// **'https://drive.google.com/file/d/1aeMIfW6Ee7u8HQJaqIGWYXOeiicvUP1t/view?usp=sharing'**
  String get my_resume_link;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
