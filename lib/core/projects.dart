import '../models/link_data.dart';
import '../models/project_model.dart';

const projects = <ProjectModel>[
  ProjectModel(
    title: 'StrasApp',
    description: "Toute l'Eurométropole de Strasbourg dans une appli",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=eu.strasbourg.strasapp',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/strasapp/id1610325996'),
      LinkData(url: 'https://strasapp.eu/'),
    ],
    imageAsset: 'strasapp.png',
  ),
  ProjectModel(
    title: 'MyUCA - Université Clermont Auvergne',
    description:
        "L’application mobile MyUCA dédiée aux étudiants de l’UCA s’offre une nouvelle ergonomie et de nouvelles fonctionnalités.",
    links: [
      LinkData.android(
        'https://play.google.com/store/apps/details?id=fr.uca.mobile&hl=fr&gl=US',
      ),
      LinkData.appStore('https://apps.apple.com/fr/app/myuca/id1061989308'),
    ],
    imageAsset: 'myuca.png',
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
    imageAsset: 'm.png',
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
    imageAsset: 'ygo_collection_manager.png',
  ),
  ProjectModel(
    title: 'Maniak Game Deals',
    description:
        'A cross-platform application using CheapShark API to display videogames deals on different websites.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/game_deals_flutter'),
      LinkData(
        url: 'https://testeurmaniak.github.io/game_deals_flutter/#/',
      ),
    ],
    imageAsset: 'game_deals.png',
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
    title: 'text_chunk_styling',
    description:
        'Flutter package which allows to style specific parts of a String.',
    links: [
      LinkData.github('https://github.com/TesteurManiak/text_chunk_styling'),
      LinkData.package('https://pub.dev/packages/text_chunk_styling'),
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
    imageAsset: 'drinking.png',
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
    imageAsset: 'todo.png',
  ),
  ProjectModel(
    title: 'Temopedia',
    description:
        "Mobile app companion for Temtem to get an easy access to creature's information.",
    links: [
      LinkData.gitlab('https://gitlab.com/G_Roux/temopedia'),
      LinkData.android(
        'https://play.google.com/store/apps/details?id=com.maniak.temopedia',
      ),
    ],
    imageAsset: 'temopedia.png',
  ),
  ProjectModel(
    title: 'Photo UI Challenge',
    description:
        "Personnal challenge, recreation of some designs found on dribbble in Flutter.",
    links: [
      LinkData.gitlab('https://gitlab.com/G_Roux/photo-ui-challenge'),
    ],
    imageAsset: 'ui_chall.png',
  ),
  ProjectModel(
    title: 'Flutter Pokedex',
    description: "Pokedex app built with Flutter (with lots of animations)",
    links: [
      LinkData.gitlab('https://gitlab.com/G_Roux/flutter_pokedex'),
    ],
    imageAsset: 'pokedex.png',
  ),
  ProjectModel(
    title: 'My Manga Collection',
    description:
        "Follow and track your manga collection easily with a simple Flutter application using Kitsu API.",
    links: [
      LinkData.gitlab('https://gitlab.com/G_Roux/mymangacollection'),
      LinkData(url: 'https://itsallwidgets.com/mymangacollection'),
    ],
    imageAsset: 'manga.png',
  ),
];
