import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/link_data.dart';
import '../../../style/text_styles.dart';

const _links = <LinkData>[
  LinkData(
    icon: FontAwesomeIcons.mediumM,
    url: 'https://rouxguillaume.medium.com/',
  ),
  LinkData(
    icon: FontAwesomeIcons.stackOverflow,
    url: 'https://stackoverflow.com/users/9942346/guillaume-roux?tab=profile',
  ),
  LinkData(
    icon: FontAwesomeIcons.linkedinIn,
    url: 'https://www.linkedin.com/in/guillaume2-roux/?locale=en_US',
  ),
  LinkData(
    icon: FontAwesomeIcons.github,
    url: 'https://github.com/TesteurManiak',
  ),
  LinkData(
    icon: FontAwesomeIcons.gitlab,
    url: 'https://gitlab.com/G_Roux',
  ),
];

class LinkButtons extends StatelessWidget {
  const LinkButtons({Key? key}) : super(key: key);

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
