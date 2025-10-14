import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/models/link_data.dart';
import 'package:my_portfolio/core/models/project_model.dart';

const _projects = <ProjectModel>[
  ProjectModel(
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
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/dailyn.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/dailyn.png',
  ),
  ProjectModel(
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
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/my_preim.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/mypreim.png',
  ),
  ProjectModel(
    title: 'StrasApp',
    description: "Toute l'Eurométropole de Strasbourg dans une appli",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=eu.strasbourg.strasapp',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/strasapp/id1610325996'),
      LinkData(url: 'https://strasapp.eu/', name: 'StrasApp.eu'),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/strasapp.png',
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/strasapp.png',
  ),
  ProjectModel(
    title: 'MyUCA - Université Clermont Auvergne',
    description:
        "L'application mobile MyUCA dédiée aux étudiants de l'UCA s'offre une nouvelle ergonomie et de nouvelles fonctionnalités.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=fr.uca.mobile&hl=fr&gl=US',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/myuca/id1061989308'),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/myuca.png',
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/myuca.png',
  ),
  ProjectModel(
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/m.png',
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/m.png',
  ),
  ProjectModel(
    title: 'Flutter Map',
    description:
        "A versatile mapping package for Flutter, based off leaflet.js, that's simple and easy to learn, yet completely customizable and configurable.",
    links: [
      LinkData.github('https://github.com/fleaflet/flutter_map'),
      LinkData.package('https://pub.dev/packages/flutter_map'),
      LinkData(name: 'Documentation', url: 'https://docs.fleaflet.dev/'),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/flutter_map.png',
  ),
  ProjectModel(
    title: 'Matomo Tracker',
    description:
        'A fully cross-platform wrap of the Matomo tracking client for Flutter, using the Matomo Tracking API.',
    links: [
      LinkData.github('https://github.com/Floating-Dartists/matomo-tracker'),
      LinkData.package('https://pub.dev/packages/matomo_tracker'),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/matomo.png',
  ),
  ProjectModel(
    title: 'icalendar_parser',
    description:
        'Package to parse iCalendar (.ics) files written in pure Dart.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/icalendar_parser'),
      LinkData.package('https://pub.dev/packages/icalendar_parser'),
    ],
  ),
  ProjectModel(
    title: 'Flutter Web Twitch Auth',
    description:
        "A Flutter Web project to illustrate OAuth2 authentication flow using Twitch's API.",
    links: [
      LinkData.github(
        'https://github.com/TesteurManiak/flutter_web_twitch_auth',
      ),
    ],
  ),
  ProjectModel(
    title: 'Image Picker Web',
    description:
        'Flutter Web Plugin to pick Images (as Widget, File or Uint8List) and Videos (as File or Uint8List)',
    links: [
      LinkData.github('https://github.com/Ahmadre/image_picker_web'),
      LinkData.package('https://pub.dev/packages/image_picker_web'),
    ],
  ),
  ProjectModel(
    title: 'YGO Collection Manager',
    description: 'Collection manager for Yu-Gi-Oh! TCG',
    links: [
      LinkData.github(
        'https://github.com/TesteurManiak/ygo_collection_manager',
      ),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/ygo_collection_manager.png',
  ),

  ProjectModel(
    title: 'twitch_api_flutter',
    description:
        'A wrapper in pure Dart to connect to Twitch.tv using OAuth implicit authentication.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/twitch_api_flutter'),
      LinkData.package('https://pub.dev/packages/twitch_api'),
    ],
  ),
  ProjectModel(
    title: "Drin'King",
    description:
        "Plus besoin de jeux de cartes de dés ou encore de télécharger une application par jeux pour s'amuser ! Voici Drin'King !",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.drinkingdev.drinking&hl=fr&gl=US',
      ),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/drinking.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/drinking.png',
  ),
  ProjectModel(
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/temopedia.png',
  ),
];

final projectsProvider = Provider<List<ProjectModel>>((ref) => _projects);
