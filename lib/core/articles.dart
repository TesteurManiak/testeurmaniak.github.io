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
  ),
  ArticleModel(
    title: 'TDD in Flutter Part 2: How to write a unit test ?',
    description:
        "This article is a continuation of the first part TDD in Flutter Part 1: Introduction to Test Driven Development. Write your first unit test Let’s consider that you have created an application which fetch data from an API. How can you test that you will be fetching and parsing your data correctly into a model class ?",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-2-how-to-write-a-unit-test-8493044792f',
    ),
  ),
  ArticleModel(
    title: 'TDD in Flutter Part 1: Introduction to Test Driven Development',
    description:
        "In this series I am going to explain how you can apply principles of the Test Driven Development (TDD for short) to a Flutter (or Dart) project. This first part will be dedicated to the basics of TDD and trying to understand when it is relevant to use it.",
    link: LinkData.medium(
      'https://itnext.io/tdd-in-flutter-part-1-introduction-to-test-driven-development-c130b9e82f36',
    ),
  ),
  ArticleModel(
    title: 'Flutter Web: OAuth authentication through external window',
    description:
        "I have found a much better way to manage authentication on Flutter Web. Thanks to my friend and colleague Meï M. for his help. Usually when you are authenticating on a website or a web application using 3rd party services you connect your account through an external window. This process avoid the website you were on to reload entirely after the redirection. It is the main issue implied with the method described in my previous article.",
    link: LinkData.medium(
      'https://itnext.io/flutter-web-oauth-authentication-through-external-window-d890a7ff6463',
    ),
  ),
  ArticleModel(
    title: 'Flutter Web: Twitch OAuth2 authentication flow implementation',
    description:
        "Currently, it is difficult to implement authentication flow such as OAuth2 on Flutter Web. One of the difficulties encountered is to be able to grab the authentication token from the URL redirection as you don’t have access to URL listener or any ways to follow changes inside an external Navigation tab.",
    link: LinkData.medium(
      'https://itnext.io/flutter-web-twitch-oauth2-authentication-flow-implementation-77d239c72be5',
    ),
  ),
  ArticleModel(
    title: 'Flutter: FCM notifications on Mobile and Web',
    description:
        "I have been recently asked to add notifications to a Flutter application I was working on. Problem is, we also had to make it available for the on development Flutter Web application. As it was an interesting challenge I decided to share how I have done my implementation.",
    link: LinkData.medium(
      'https://rouxguillaume.medium.com/flutter-fcm-notifications-on-mobile-and-web-3a23db50d61d',
    ),
  ),
];
