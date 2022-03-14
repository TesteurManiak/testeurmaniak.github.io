import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/link_data.dart';
import '../../../style/text_styles.dart';

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
