import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/models/link_data.dart';
import 'package:my_portfolio/models/project_model.dart';

class ProjectsBloc extends BlocBase {
  final _projects = <ProjectModel>[
    ProjectModel(
      title: 'MyUCA - Université Clermont Auvergne',
      description:
          "L’application mobile MyUCA dédiée aux étudiants de l’UCA s’offre une nouvelle ergonomie et de nouvelles fonctionnalités.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.android,
          url:
              'https://play.google.com/store/apps/details?id=fr.uca.mobile&hl=fr&gl=US',
        ),
        LinkData(
          icon: FontAwesomeIcons.appStore,
          url: 'https://apps.apple.com/fr/app/myuca/id1061989308',
        ),
      ],
      imageAsset: 'assets/myuca.png',
    ),
    ProjectModel(
      title: 'M - Infos voyageur, Mobilités à Grenoble',
      description:
          "M facilite vos trajets du quotidien. Grâce aux nombreux services embarqués dans l'application, retrouvez toutes les informations utiles à vos déplacements.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.android,
          url:
              'https://play.google.com/store/apps/details?id=org.lametro.metromobilite&hl=fr&gl=US',
        ),
        LinkData(
          icon: FontAwesomeIcons.appStore,
          url: 'https://apps.apple.com/fr/app/m-infos-voyageurs/id966169282',
        ),
      ],
      imageAsset: 'assets/m.png',
    ),
    ProjectModel(
      title: 'Drin\'King',
      description:
          "Plus besoin de jeux de cartes de dés ou encore de télécharger une application par jeux pour s'amuser ! Voici Drin'King !",
      links: [
        LinkData(
          icon: FontAwesomeIcons.android,
          url:
              'https://play.google.com/store/apps/details?id=com.drinkingdev.drinking&hl=fr&gl=US',
        ),
      ],
      imageAsset: 'assets/drinking.png',
    ),
    ProjectModel(
      title: 'iCalendar Parser',
      description:
          'Package to parse iCalendar (.ics) files written in pure Dart.',
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/TesteurManiak/icalendar_parser',
        ),
        LinkData(
          icon: FontAwesomeIcons.boxOpen,
          url: 'https://pub.dev/packages/icalendar_parser',
        ),
      ],
    ),
    ProjectModel(
      title: 'Flutter Web Twitch Auth',
      description:
          "A Flutter Web project to illustrate OAuth2 authentication flow using Twitch's API.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url:
              'https://github.com/TesteurManiak/flutter_web_twitch_auth/tree/use-external-win',
        ),
      ],
    ),
    ProjectModel(
      title: 'Image Picker Web',
      description:
          'Flutter Web Plugin to pick Images (as Widget, File or Uint8List) and Videos (as File or Uint8List)',
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/Ahmadre/image_picker_web',
        ),
        LinkData(
          icon: FontAwesomeIcons.boxOpen,
          url: 'https://pub.dev/packages/image_picker_web',
        ),
      ],
    ),
    ProjectModel(
      title: 'Maniak Game Deals',
      description:
          'A cross-platform application using CheapShark API to display videogames deals on different websites.',
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/TesteurManiak/game_deals_flutter',
        ),
        LinkData(
          url: 'https://testeurmaniak.github.io/game_deals_flutter/#/',
        ),
      ],
      imageAsset: 'assets/game_deals.png',
    ),
    ProjectModel(
      title: 'Twitch API',
      description:
          'A wrapper in pure Dart to connect to Twitch.tv using OAuth implicit authentication.',
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/TesteurManiak/twitch_api_flutter',
        ),
        LinkData(
          icon: FontAwesomeIcons.boxOpen,
          url: 'https://pub.dev/packages/twitch_api',
        ),
      ],
    ),
    ProjectModel(
      title: 'Text Chunk Styling',
      description:
          'Flutter package which allows to style specific parts of a String.',
      links: [
        LinkData(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/TesteurManiak/text_chunk_styling',
        ),
        LinkData(
          icon: FontAwesomeIcons.boxOpen,
          url: 'https://pub.dev/packages/text_chunk_styling',
        ),
      ],
    ),
    ProjectModel(
      title: 'ToDoList Flutter',
      description:
          'ToDo list made in flutter for training purpose in the use of local SQLite database and UI.',
      links: [
        LinkData(
          icon: FontAwesomeIcons.gitlab,
          url: 'https://gitlab.com/G_Roux/todolist-flutter',
        ),
        LinkData(
          icon: FontAwesomeIcons.android,
          url:
              'https://play.google.com/store/apps/details?id=com.maniak.todo_list',
        ),
      ],
      imageAsset: 'assets/todo.png',
    ),
    ProjectModel(
      title: 'Temopedia',
      description:
          "Mobile app companion for Temtem to get an easy access to creature's information.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.gitlab,
          url: 'https://gitlab.com/G_Roux/temopedia',
        ),
        LinkData(
          icon: FontAwesomeIcons.android,
          url:
              'https://play.google.com/store/apps/details?id=com.maniak.temopedia',
        ),
      ],
      imageAsset: 'assets/temopedia.png',
    ),
    ProjectModel(
      title: 'Photo UI Challenge',
      description:
          "Personnal challenge, recreation of some designs found on dribbble in Flutter.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.gitlab,
          url: 'https://gitlab.com/G_Roux/photo-ui-challenge',
        ),
      ],
      imageAsset: 'assets/ui_chall.png',
    ),
    ProjectModel(
      title: 'Flutter Pokedex',
      description: "Pokedex app built with Flutter (with lots of animations)",
      links: [
        LinkData(
          icon: FontAwesomeIcons.gitlab,
          url: 'https://gitlab.com/G_Roux/flutter_pokedex',
        ),
      ],
      imageAsset: 'assets/pokedex.png',
    ),
    ProjectModel(
      title: 'My Manga Collection',
      description:
          "Follow and track your manga collection easily with a simple Flutter application using Kitsu API.",
      links: [
        LinkData(
          icon: FontAwesomeIcons.gitlab,
          url: 'https://gitlab.com/G_Roux/mymangacollection',
        ),
        LinkData(
          url: 'https://itsallwidgets.com/mymangacollection',
        ),
      ],
      imageAsset: 'assets/manga.png',
    ),
  ];
  List<ProjectModel> get projects => _projects;

  @override
  void dispose() {}

  @override
  void initState() {}
}
