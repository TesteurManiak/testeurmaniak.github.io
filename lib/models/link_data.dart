import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../core/icons/my_portfolio_icons.dart';

@immutable
class LinkData {
  final IconData icon;
  final String url;

  const LinkData({this.icon = MyPortfolio.link, required this.url});
  const LinkData.android(this.url) : icon = MyPortfolio.android;
  const LinkData.appStore(this.url) : icon = MyPortfolio.app_store;
  const LinkData.github(this.url) : icon = MyPortfolio.github;
  const LinkData.gitlab(this.url) : icon = MyPortfolio.gitlab;
  const LinkData.linkedIn(this.url) : icon = MyPortfolio.linkedin_in;
  const LinkData.medium(this.url) : icon = MyPortfolio.medium_m;
  const LinkData.package(this.url) : icon = MyPortfolio.box_open;
  const LinkData.stackOverflow(this.url) : icon = MyPortfolio.stack_overflow;
  const LinkData.twitter(this.url) : icon = MyPortfolio.twitter;

  Future<bool> openLink() => launchUrlString(url);
}
