import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../l10n/strings.dart';
import '../models/link_data.dart';
import 'icon_link.dart';

const _links = <LinkData>[
  LinkData.medium('https://rouxguillaume.medium.com/'),
  LinkData.stackOverflow(
    'https://stackoverflow.com/users/9942346/guillaume-roux?tab=profile',
  ),
  LinkData.linkedIn(
    'https://www.linkedin.com/in/guillaume2-roux/?locale=en_US',
  ),
  LinkData.github('https://github.com/TesteurManiak'),
  LinkData.gitlab('https://gitlab.com/G_Roux'),
  LinkData.twitter('https://twitter.com/TesteurManiak'),
];

class HomeSection extends StatelessComponent {
  const HomeSection({
    required this.strings,
    required this.onContact,
    required this.onPortfolio,
    super.key,
  });

  final AppStrings strings;
  final VoidCallback onContact;
  final VoidCallback onPortfolio;

  @override
  Component build(BuildContext context) {
    return div(classes: 'home', [
      div(classes: 'home-text', [
        div(classes: 'hero', [
          p(classes: 'hero-line', [Component.text(strings.homeHeaderHello)]),
          h1(classes: 'hero-name', [
            Component.text(strings.firstName),
            const br(),
            Component.text(strings.lastName),
          ]),
          p(classes: 'hero-position', [
            Component.text(strings.homeHeaderPosition),
          ]),
        ]),
        div(classes: 'find-me', [
          p(classes: 'subheadline', [Component.text(strings.homeFindMeOn)]),
          div(classes: 'icon-links', [
            for (final link in _links) IconLink(link),
          ]),
        ]),
        div(classes: 'buttons', [
          button(classes: 'btn btn-primary', onClick: onContact, [
            Component.text(strings.contactMe),
          ]),
          button(classes: 'btn btn-outlined', onClick: onPortfolio, [
            Component.text(strings.portfolio),
          ]),
        ]),
      ]),
      div(classes: 'avatar', [
        const img(
          src: '/assets/avatar.png',
          alt: 'Guillaume Roux',
          width: 400,
          height: 400,
        ),
      ]),
    ]);
  }
}
