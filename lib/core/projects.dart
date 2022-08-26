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
      LinkData(url: 'https://strasapp.eu/', name: 'StrasApp.eu'),
    ],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/strasapp.png',
    iconAsset: 'strasapp.png',
    imageBlurHash: r'LFJv~C0c0zRQ7X}HI:J60f=|$ixF',
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/myuca.png',
    iconAsset: 'myuca.png',
    imageBlurHash: 'L3GAj}3WKfMI00_2tmDi8wIB_M#R',
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
    iconAsset: 'm.png',
    imageBlurHash: r'LYL|$i?Kxt4n-;M{tQjw%4Injbxu',
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
    iconAsset: 'manga.png',
    imageBlurHash: 'LDFFEU~CR6In^5Z~X8o~00w[adM}',
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
    imageBlurHash: 'L3EoiN3N00,]00V~?]ng00%3RNNa',
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
    imageBlurHash: 'LKOg4*n,~pkraLxZ-;X9Rjs9V@s,',
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/drinking.png',
    imageBlurHash: r'L7O4F.3E00?t02+a~JS$00$%,vIA',
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/todo.png',
    imageBlurHash: 'LMD8@H:NNZKk}uwaWBSi5~EUs;xT',
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
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/temopedia.png',
    imageBlurHash: 'L17x8zD;9b00DQaxE3-mHXbVAIui',
  ),
  ProjectModel(
    title: 'Photo UI Challenge',
    description:
        "Personnal challenge, recreation of some designs found on dribbble in Flutter.",
    links: [LinkData.gitlab('https://gitlab.com/G_Roux/photo-ui-challenge')],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/ui_chall.png',
    imageBlurHash: 'L4Lgksns00^P00~B00E#00E9_L9D',
  ),
  ProjectModel(
    title: 'Flutter Pokedex',
    description: "Pokedex app built with Flutter (with lots of animations)",
    links: [LinkData.gitlab('https://gitlab.com/G_Roux/flutter_pokedex')],
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/projects/pokedex.png',
    imageBlurHash: 'LfNT?pTI%4wc-.jERjWsPEwOV?Sw',
  ),
];
