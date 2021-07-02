import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/models/link_data.dart';
import 'package:my_portfolio/models/project_model.dart';

class ProjectsBloc extends BlocBase {
  final _projects = <ProjectModel>[
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
    ),
  ];
  List<ProjectModel> get projects => _projects;

  @override
  void dispose() {}

  @override
  void initState() {}
}
