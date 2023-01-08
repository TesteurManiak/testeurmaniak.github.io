import 'package:my_portfolio/models/article_model.dart';
import 'package:my_portfolio/models/link_data.dart';

const articles = <ArticleModel>[
  ArticleModel(
    title: "TDD in Flutter Part 4: Creating Mocks",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-4-creating-mocks-eb3b0a38bae0',
    ),
    description:
        "Welcome to this 4th episode of the “Test Driven Development in Flutter” series, today I’m going to explain the concept of “Mocking” classes and methods. Then I will be comparing different ways of mocking your class, including two popular mocking packages mockito, maintained by the Dart team, and mocktail, maintained by Very Good Ventures.",
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/tdd_in_flutter.png',
    blurHash: 'LP9a{[kXtKVs*0j[tRazMHV@S6o}',
    date: '2022-08-24',
  ),
  ArticleModel(
    title: "What’s in my VSCode? — For Flutter development",
    description:
        "My main editor, when it comes to writing code, has been for several years Visual Studio Code. It’s free, open-source and has a good plugin ecosystem so today, I’m going to showcase the different tools I’ve been using when coding in Dart & Flutter.",
    link: LinkData.medium(
      'https://itnext.io/whats-in-my-vscode-for-flutter-development-48ee88e0adaf',
    ),
    date: '2022-08-05',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/vscode_loves_flutter.png',
    blurHash: 'LFA^kXJC7Z:~*0kCyDj^00xZ+vFz',
  ),
  ArticleModel(
    title: 'TDD in Flutter - Special: Golden tests with Alchemist 🧙🏼',
    description:
        "One of the subjects covered in my previous article was “Golden Testing” with an example made using the package golden_toolkit. It is a great package to perform snapshot comparisons in your tests but, it has one major caveat which was the non consistency between the generated files depending on the platform used.",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-special-golden-tests-with-alchemist-ea8c96ff4dfe',
    ),
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/tdd_in_flutter.png',
    blurHash: 'LP9a{[kXtKVs*0j[tRazMHV@S6o}',
    date: '2022-04-04',
  ),
  ArticleModel(
    title: 'TDD in Flutter Part 3: Testing your widgets',
    description:
        "Hi everyone, it has been a while since the last episode but finally here it is, and I am ready to explain to you how to test your widgets. In this 3rd part I will explain you how to use testWidgets and how to use snapshot comparison for your widget rendering with the package golden_toolkit.",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-3-testing-your-widgets-c5e87d76a864',
    ),
    date: '2021-12-20',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/tdd_in_flutter.png',
    blurHash: 'LP9a{[kXtKVs*0j[tRazMHV@S6o}',
  ),
  ArticleModel(
    title: 'TDD in Flutter Part 2: How to write a unit test ?',
    description:
        "This article is a continuation of the first part TDD in Flutter Part 1: Introduction to Test Driven Development. Write your first unit test Let’s consider that you have created an application which fetch data from an API. How can you test that you will be fetching and parsing your data correctly into a model class ?",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-2-how-to-write-a-unit-test-8493044792f',
    ),
    date: '2021-07-12',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/tdd_in_flutter.png',
    blurHash: 'LP9a{[kXtKVs*0j[tRazMHV@S6o}',
  ),
  ArticleModel(
    title: 'TDD in Flutter Part 1: Introduction to Test Driven Development',
    description:
        "In this series I am going to explain how you can apply principles of the Test Driven Development (TDD for short) to a Flutter (or Dart) project. This first part will be dedicated to the basics of TDD and trying to understand when it is relevant to use it.",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-1-introduction-to-test-driven-development-c130b9e82f36',
    ),
    date: '2021-07-04',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/tdd_in_flutter.png',
    blurHash: 'LP9a{[kXtKVs*0j[tRazMHV@S6o}',
  ),
  ArticleModel(
    title: 'Flutter Web: OAuth authentication through external window',
    description:
        "I have found a much better way to manage authentication on Flutter Web. Thanks to my friend and colleague Meï M. for his help. Usually when you are authenticating on a website or a web application using 3rd party services you connect your account through an external window. This process avoid the website you were on to reload entirely after the redirection. It is the main issue implied with the method described in my previous article.",
    link: LinkData.medium(
      'https://itnext.io/flutter-web-oauth-authentication-through-external-window-d890a7ff6463',
    ),
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/oauth.png',
    blurHash: 'LkOW{R.To#DiozkCayae^*ROn~xt',
    date: '2021-06-27',
  ),
  ArticleModel(
    title: 'Flutter Web: Twitch OAuth2 authentication flow implementation',
    description:
        "Currently, it is difficult to implement authentication flow such as OAuth2 on Flutter Web. One of the difficulties encountered is to be able to grab the authentication token from the URL redirection as you don’t have access to URL listener or any ways to follow changes inside an external Navigation tab.",
    link: LinkData.medium(
      'https://itnext.io/flutter-web-twitch-oauth2-authentication-flow-implementation-77d239c72be5',
    ),
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/twitch.jpeg',
    blurHash: 'LYRV|Za#%Lt6x[kBRkay~oj[M|ay',
    date: '2021-02-20',
  ),
  ArticleModel(
    title: 'Flutter: FCM notifications on Mobile and Web',
    description:
        "I have been recently asked to add notifications to a Flutter application I was working on. Problem is, we also had to make it available for the on development Flutter Web application. As it was an interesting challenge I decided to share how I have done my implementation.",
    link: LinkData.medium(
      'https://rouxguillaume.medium.com/flutter-fcm-notifications-on-mobile-and-web-3a23db50d61d',
    ),
    date: '2020-10-15',
    blurHash: r'LTOy@R;b=C#jx^RoWZa$?wJCI;S4',
    imageUrl:
        'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/articles/firebase.png',
  ),
];
