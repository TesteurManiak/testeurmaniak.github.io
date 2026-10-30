import '../models/link_data.dart';
import '../models/project.dart';

const projects = <Project>[
  Project(
    title: 'Dailyn',
    description: 'Paye et gagne du cashback dans ta ville',
    links: [
      LinkData(url: 'https://dailyn.app/', name: 'Website'),
      LinkData.android(
        'https://play.google.com/store/apps/details?id=io.thering.app',
      ),
      LinkData.appStore(
        'https://apps.apple.com/fr/app/the-ring-io/id1479375224',
      ),
    ],
    iconUrl: '/assets/icons/dailyn.webp',
    imageUrl: '/assets/projects/dailyn.webp',
  ),
  Project(
    title: 'My Praemia',
    description:
        "My Praemia : l'application de Primonial REIM France destinée aux associés de ses SCPI.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.praemia.reim',
      ),
      LinkData.appStore(
        'https://apps.apple.com/fr/app/my-praemia/id6503942026',
      ),
    ],
    iconUrl: '/assets/icons/my_preim.webp',
    imageUrl: '/assets/projects/mypreim.webp',
  ),
  Project(
    title: 'StrasApp',
    description: "Toute l'Eurométropole de Strasbourg dans une appli",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=eu.strasbourg.strasapp',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/strasapp/id1610325996'),
      LinkData(url: 'https://strasapp.eu/', name: 'StrasApp.eu'),
    ],
    imageUrl: '/assets/projects/strasapp.webp',
    iconUrl: '/assets/icons/strasapp.webp',
  ),
  Project(
    title: 'MyUCA - Université Clermont Auvergne',
    description:
        "L'application mobile MyUCA dédiée aux étudiants de l'UCA s'offre une nouvelle ergonomie et de nouvelles fonctionnalités.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=fr.uca.mobile&hl=fr&gl=US',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/myuca/id1061989308'),
    ],
    imageUrl: '/assets/projects/myuca.webp',
    iconUrl: '/assets/icons/myuca.webp',
  ),
  Project(
    title: 'M - Infos voyageur, Mobilités à Grenoble',
    description:
        "M facilite vos trajets du quotidien. Grâce aux nombreux services embarqués dans l'application, retrouvez toutes les informations utiles à vos déplacements.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=org.lametro.metromobilite&hl=fr&gl=US',
      ),
      LinkData.appStore(
        'https://apps.apple.com/fr/app/m-infos-voyageurs/id966169282',
      ),
    ],
    imageUrl: '/assets/projects/m.webp',
    iconUrl: '/assets/icons/m.webp',
  ),
  Project(
    title: 'Flutter Map',
    description:
        "A versatile mapping package for Flutter, based off leaflet.js, that's simple and easy to learn, yet completely customizable and configurable.",
    links: [
      LinkData.github('https://github.com/fleaflet/flutter_map'),
      LinkData.package('https://pub.dev/packages/flutter_map'),
      LinkData(name: 'Documentation', url: 'https://docs.fleaflet.dev/'),
    ],
    iconUrl: '/assets/icons/flutter_map.webp',
  ),
  Project(
    title: 'Matomo Tracker',
    description:
        'A fully cross-platform wrap of the Matomo tracking client for Flutter, using the Matomo Tracking API.',
    links: [
      LinkData.github('https://github.com/Floating-Dartists/matomo-tracker'),
      LinkData.package('https://pub.dev/packages/matomo_tracker'),
    ],
    iconUrl: '/assets/icons/matomo.webp',
  ),
  Project(
    title: 'Flutter Manga Reader',
    description: 'A cross-platform manga reader built with Flutter.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/flutter_manga_reader'),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/flutter_manga_reader/main/assets/splash/splash.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/flutter_manga_reader/main/screenshots/dark/explorer.png',
  ),
  Project(
    title: 'icalendar_parser',
    description:
        'Package to parse iCalendar (.ics) files written in pure Dart.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/icalendar_parser'),
      LinkData.package('https://pub.dev/packages/icalendar_parser'),
    ],
  ),
  Project(
    title: 'Flutter Web Twitch Auth',
    description:
        "A Flutter Web project to illustrate OAuth2 authentication flow using Twitch's API.",
    links: [
      LinkData.github(
        'https://github.com/TesteurManiak/flutter_web_twitch_auth',
      ),
    ],
  ),
  Project(
    title: 'Image Picker Web',
    description:
        'Flutter Web Plugin to pick Images (as Widget, File or Uint8List) and Videos (as File or Uint8List)',
    links: [
      LinkData.github('https://github.com/Ahmadre/image_picker_web'),
      LinkData.package('https://pub.dev/packages/image_picker_web'),
    ],
  ),
  Project(
    title: 'YGO Collection Manager',
    description: 'Collection manager for Yu-Gi-Oh! TCG',
    links: [
      LinkData.github(
        'https://github.com/TesteurManiak/ygo_collection_manager',
      ),
    ],
    imageUrl: '/assets/projects/ygo_collection_manager.webp',
  ),

  Project(
    title: 'twitch_api_flutter',
    description:
        'A wrapper in pure Dart to connect to Twitch.tv using OAuth implicit authentication.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/twitch_api_flutter'),
      LinkData.package('https://pub.dev/packages/twitch_api'),
    ],
  ),
  Project(
    title: "Drin'King",
    description:
        "Plus besoin de jeux de cartes de dés ou encore de télécharger une application par jeux pour s'amuser ! Voici Drin'King !",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.drinkingdev.drinking&hl=fr&gl=US',
      ),
    ],
    iconUrl: '/assets/icons/drinking.webp',
    imageUrl: '/assets/projects/drinking.webp',
  ),
  Project(
    title: 'Temopedia',
    description:
        "Mobile app companion for Temtem to get an easy access to creature's information.",
    links: [
      LinkData.github('https://github.com/TesteurManiak/temopedia'),
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.maniak.temopedia',
      ),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/temopedia/dev/assets/launcher_icon/icon.png',
    imageUrl: '/assets/projects/temopedia.webp',
  ),
];
