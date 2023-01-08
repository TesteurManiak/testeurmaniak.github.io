import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/core/models/link_data.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:seo_renderer/seo_renderer.dart';

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

class LinkButtons extends StatelessWidget {
  const LinkButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextRenderer(
          text: strings.home_find_me_on,
          child: Text(
            strings.home_find_me_on,
            style: TextStyles.selectSubHeadline(context),
          ),
        ),
        Wrap(
          children: _links
              .map<Widget>(
                (e) => LinkRenderer(
                  text: e.name,
                  href: e.url,
                  child: IconButton(
                    onPressed: e.openLink,
                    icon: Icon(e.icon),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
