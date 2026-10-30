import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../models/link_data.dart';

class IconLink extends StatelessComponent {
  const IconLink(this.link, {super.key});

  final LinkData link;

  @override
  Component build(BuildContext context) {
    return a(
      href: link.url,
      target: Target.blank,
      classes: 'icon-button',
      attributes: {'aria-label': link.name, 'title': link.name},
      [span(classes: 'icon icon-${link.icon}', [])],
    );
  }
}
