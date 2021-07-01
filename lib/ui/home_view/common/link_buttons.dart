import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class _Link {
  final IconData icon;
  final String url;

  const _Link({required this.icon, required this.url});
}

const _links = <_Link>[
  _Link(
    icon: FontAwesomeIcons.mediumM,
    url: 'https://rouxguillaume.medium.com/',
  ),
  _Link(
    icon: FontAwesomeIcons.stackOverflow,
    url: 'https://stackoverflow.com/users/9942346/guillaume-roux?tab=profile',
  ),
  _Link(
    icon: FontAwesomeIcons.linkedinIn,
    url: 'https://www.linkedin.com/in/guillaume2-roux/?locale=en_US',
  ),
  _Link(
    icon: FontAwesomeIcons.github,
    url: 'https://github.com/TesteurManiak',
  ),
  _Link(
    icon: FontAwesomeIcons.gitlab,
    url: 'https://gitlab.com/G_Roux',
  ),
];

class LinkButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Find Me on',
          style: TextStyles.selectSubHeadline(context),
        ),
        Wrap(
          children: _links
              .map<Widget>(
                (e) => IconButton(
                  onPressed: () => launch(e.url),
                  icon: Icon(e.icon),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
