import '../models/article_model.dart';
import '../models/link_data.dart';

const articles = <ArticleModel>[
  ArticleModel(
    title: 'TDD in Flutter Part 3: Testing your widgets',
    description:
        "Hi everyone, it has been a while since the last episode but finally here it is, and I am ready to explain to you how to test your widgets. In this 3rd part I will explain you how to use testWidgets and how to use snapshot comparison for your widget rendering with the package golden_toolkit.",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-3-testing-your-widgets-c5e87d76a864',
    ),
  )
];
