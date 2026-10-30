class AppStrings {
  const AppStrings({
    required this.languageCode,
    required this.homeTab,
    required this.aboutTab,
    required this.articlesTab,
    required this.projectsTab,
    required this.contactTab,
    required this.homeHeaderHello,
    required this.homeHeaderPosition,
    required this.firstName,
    required this.lastName,
    required this.homeFindMeOn,
    required this.contactMe,
    required this.portfolio,
    required this.aboutTitle,
    required this.aboutDescription,
    required this.contactTitle,
    required this.contactFirstName,
    required this.contactLastName,
    required this.contactMessage,
    required this.contactMessageHint,
    required this.contactSend,
    required this.resumeButton,
    required this.resumeLink,
    required this.articlesError,
    required this.months,
    required this.dayFirst,
  });

  final String languageCode;
  final String homeTab;
  final String aboutTab;
  final String articlesTab;
  final String projectsTab;
  final String contactTab;
  final String homeHeaderHello;
  final String homeHeaderPosition;
  final String firstName;
  final String lastName;
  final String homeFindMeOn;
  final String contactMe;
  final String portfolio;
  final String aboutTitle;
  final String aboutDescription;
  final String contactTitle;
  final String contactFirstName;
  final String contactLastName;
  final String contactMessage;
  final String contactMessageHint;
  final String contactSend;
  final String resumeButton;
  final String resumeLink;
  final String articlesError;
  final List<String> months;
  final bool dayFirst;

  static const supported = [en, fr];

  /// Returns the strings matching the language of [locale] (e.g. `fr-FR`),
  /// falling back to English.
  static AppStrings forLocale(String? locale) {
    final language = locale?.split(RegExp('[-_]')).first.toLowerCase();
    return supported.firstWhere(
      (s) => s.languageCode == language,
      orElse: () => en,
    );
  }

  String formatDate(DateTime date) {
    final month = months[date.month - 1];
    return dayFirst
        ? '${date.day} $month ${date.year}'
        : '$month ${date.day}, ${date.year}';
  }

  static const en = AppStrings(
    languageCode: 'en',
    homeTab: 'Home',
    aboutTab: 'About',
    articlesTab: 'Articles',
    projectsTab: 'Projects',
    contactTab: 'Contact',
    homeHeaderHello: 'Hello, I am',
    homeHeaderPosition: 'Flutter Software Engineer',
    firstName: 'Guillaume',
    lastName: 'Roux',
    homeFindMeOn: 'Find me on',
    contactMe: 'Contact me',
    portfolio: 'Portfolio',
    aboutTitle: 'About me',
    aboutDescription:
        "I've been using Flutter since September 2018. Since then I've been able to work on a lot of projects each with its own problematics. You will find on this website some applications made during my spare time and some made as part of my job as a mobile developer. You will also find some articles related to Dart and Flutter that I am writting on the site Medium.com and Dart/Flutter packages I have released on Pub.dev.",
    contactTitle: "Let's get in touch!",
    contactFirstName: 'First name',
    contactLastName: 'Last name',
    contactMessage: 'Message',
    contactMessageHint: 'Type your message here',
    contactSend: 'Send',
    resumeButton: 'See my resume',
    resumeLink:
        'https://drive.google.com/file/d/1aeMIfW6Ee7u8HQJaqIGWYXOeiicvUP1t/view?usp=sharing',
    articlesError: 'Unable to load articles.',
    months: [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ],
    dayFirst: false,
  );

  static const fr = AppStrings(
    languageCode: 'fr',
    homeTab: 'Accueil',
    aboutTab: 'À propos',
    articlesTab: 'Articles',
    projectsTab: 'Projets',
    contactTab: 'Contact',
    homeHeaderHello: 'Bonjour, je suis',
    homeHeaderPosition: 'Flutter Software Engineer',
    firstName: 'Guillaume',
    lastName: 'Roux',
    homeFindMeOn: 'Vous pouvez me trouver sur',
    contactMe: 'Contactez-moi',
    portfolio: 'Portfolio',
    aboutTitle: 'À propos de moi',
    aboutDescription:
        "Je suis un développeur Flutter basé à Lyon. Je suis passionné par le développement mobile et j'aime créer des applications qui sont simples et efficaces. J'utilise la technologie Flutter depuis septembre 2018 et j'ai eu l'occasion de travailler sur de nombreux projets personnels et professionnels.",
    contactTitle: 'Restons en contact !',
    contactFirstName: 'Prénom',
    contactLastName: 'Nom',
    contactMessage: 'Message',
    contactMessageHint: 'Votre message',
    contactSend: 'Envoyer',
    resumeButton: 'Voir mon CV',
    resumeLink:
        'https://drive.google.com/file/d/1hUsMF6gvOiMeC6lUzfK1TWPYIkaZoVlp/view?usp=sharing',
    articlesError: 'Impossible de charger les articles.',
    months: [
      'janvier',
      'février',
      'mars',
      'avril',
      'mai',
      'juin',
      'juillet',
      'août',
      'septembre',
      'octobre',
      'novembre',
      'décembre',
    ],
    dayFirst: true,
  );
}
