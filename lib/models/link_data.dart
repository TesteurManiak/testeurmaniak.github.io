class LinkData {
  const LinkData({required this.url, required this.name, this.icon = 'link'});

  const LinkData.twitter(this.url) : icon = 'twitter', name = 'Twitter';

  const LinkData.stackOverflow(this.url)
    : icon = 'stack-overflow',
      name = 'Stack Overflow';

  const LinkData.package(this.url) : icon = 'box-open', name = 'Pub.dev';

  const LinkData.medium(this.url) : icon = 'medium', name = 'Medium';

  const LinkData.linkedIn(this.url) : icon = 'linkedin', name = 'LinkedIn';

  const LinkData.gitlab(this.url) : icon = 'gitlab', name = 'Gitlab';

  const LinkData.github(this.url) : icon = 'github', name = 'Github';

  const LinkData.appStore(this.url) : icon = 'app-store', name = 'App Store';

  const LinkData.android(this.url) : icon = 'android', name = 'Play Store';

  /// Suffix of the `icon-*` CSS class rendering the glyph from the icon font.
  final String icon;
  final String url;
  final String name;
}
