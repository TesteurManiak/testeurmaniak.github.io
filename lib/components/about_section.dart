import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../l10n/strings.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({required this.strings, super.key});

  final AppStrings strings;

  @override
  Component build(BuildContext context) {
    return div(classes: 'about', [
      div(classes: 'about-text', [
        div(classes: 'section-title', [
          h2([Component.text(strings.aboutTitle)]),
          div(classes: 'section-title-line', []),
        ]),
        p(classes: 'subheadline', [Component.text(strings.aboutDescription)]),
        a(
          href: strings.resumeLink,
          target: Target.blank,
          classes: 'btn btn-outlined',
          [Component.text(strings.resumeButton)],
        ),
      ]),
      div(classes: 'about-logo', [
        const img(
          src: '/assets/flutter-logo.svg',
          alt: 'Flutter',
          width: 400,
          height: 400,
        ),
      ]),
    ]);
  }
}
