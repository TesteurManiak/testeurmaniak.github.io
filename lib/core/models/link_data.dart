import 'package:flutter/material.dart';
import 'package:my_portfolio/core/icons/my_portfolio_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

@immutable
class LinkData {
  const LinkData({
    this.icon = MyPortfolio.link,
    required this.url,
    required this.name,
  });

  const LinkData.twitter(this.url)
      : icon = MyPortfolio.twitter,
        name = 'Twitter';

  const LinkData.stackOverflow(this.url)
      : icon = MyPortfolio.stack_overflow,
        name = 'Stack Overflow';

  const LinkData.package(this.url)
      : icon = MyPortfolio.box_open,
        name = 'Pub.dev';

  const LinkData.medium(this.url)
      : icon = MyPortfolio.medium_m,
        name = 'Medium';

  const LinkData.linkedIn(this.url)
      : icon = MyPortfolio.linkedin_in,
        name = 'LinkedIn';

  const LinkData.gitlab(this.url)
      : icon = MyPortfolio.gitlab,
        name = 'Gitlab';

  const LinkData.github(this.url)
      : icon = MyPortfolio.github,
        name = 'Github';

  const LinkData.appStore(this.url)
      : icon = MyPortfolio.app_store,
        name = 'App Store';

  const LinkData.android(this.url)
      : icon = MyPortfolio.android,
        name = 'Play Store';

  final IconData icon;
  final String url;
  final String name;

  Future<bool> openLink() => launchUrlString(url);
}
