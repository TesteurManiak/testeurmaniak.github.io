import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_tab => 'Home';

  @override
  String get about_tab => 'About';

  @override
  String get articles_tab => 'Articles';

  @override
  String get projects_tab => 'Projects';

  @override
  String get contact_tab => 'Contact';

  @override
  String get home_header_hello => 'Hello, I am';

  @override
  String get home_header_position => 'Flutter Software Engineer';

  @override
  String get global_firstname => 'Guillaume';

  @override
  String get global_lastname => 'Roux';

  @override
  String get home_find_me_on => 'Find me on';

  @override
  String get contact_me => 'Contact me';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get about_section_title => 'About me';

  @override
  String get about_section_description => 'I\'ve been using Flutter since September 2018. Since then I\'ve been able to work on a lot of projects each with its own problematics. You will find on this website some applications made during my spare time and some made as part of my job as a mobile developer. You will also find some articles related to Dart and Flutter that I am writting on the site Medium.com and Dart/Flutter packages I have released on Pub.dev.';

  @override
  String get contact_section_title => 'Let\'s get in touch!';

  @override
  String get contact_section_firstname => 'First name';

  @override
  String get contact_section_lastname => 'Last name';

  @override
  String get contact_section_message => 'Message';

  @override
  String get contact_section_message_hint => 'Type your message here';

  @override
  String get contact_section_send => 'Send';
}
