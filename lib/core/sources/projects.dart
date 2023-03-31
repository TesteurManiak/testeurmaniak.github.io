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
    title: 'MyPREIM',
    description:
        "MyPREIM : l'application de Primonial REIM France destinée aux associés de ses SCPI.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.primonial.reim',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/mypreim/id1658749867'),
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
    title: 'My Manga Collection',
    description:
        "Follow and track your manga collection easily with a simple Flutter application using Kitsu API.",
    links: [
      LinkData.github('https://github.com/TesteurManiak/my-manga-collection'),
      LinkData(
        url: 'https://itsallwidgets.com/mymangacollection',
        name: 'ItsAllWidgets',
      ),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/manga.png',
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/manga.png',
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
    title: 'icon_decoration',
    description:
        'Add decoration capabilities for the Icon widget with shadows, borders, gradients.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/icon_decoration'),
      LinkData.package('https://pub.dev/packages/icon_decoration'),
    ],
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
    title: 'Maniak Game Deals',
    description:
        'A cross-platform application using CheapShark API to display videogames deals on different websites.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/game_deals_flutter'),
      LinkData(
        url: 'https://testeurmaniak.github.io/game_deals_flutter/#/',
        name: 'Game Deals Flutter',
      ),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/game_deals.png',
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
    title: 'ToDoList Flutter',
    description:
        'ToDo list made in flutter for training purpose in the use of local SQLite database and UI.',
    links: [
      LinkData.gitlab('https://gitlab.com/G_Roux/todolist-flutter'),
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.maniak.todo_list',
      ),
    ],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/todolist.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/todo.png',
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
  ProjectModel(
    title: 'Flutter Pokedex',
    description: "Pokedex app built with Flutter (with lots of animations)",
    links: [LinkData.gitlab('https://gitlab.com/G_Roux/flutter_pokedex')],
    iconUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/icons/pokedex.png',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/pokedex.png',
  ),
];

final projectsProvider = Provider<List<ProjectModel>>((ref) => _projects);
