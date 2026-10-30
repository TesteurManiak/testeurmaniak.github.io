import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import 'components/about_section.dart';
import 'components/articles_section.dart';
import 'components/contact_section.dart';
import 'components/home_section.dart';
import 'components/projects_section.dart';
import 'l10n/strings.dart';

enum AppTab {
  home('home'),
  about('person'),
  articles('doc-text-inv'),
  projects('code'),
  contact('contact-mail');

  const AppTab(this.icon);

  final String icon;

  String label(AppStrings strings) => switch (this) {
    home => strings.homeTab,
    about => strings.aboutTab,
    articles => strings.articlesTab,
    projects => strings.projectsTab,
    contact => strings.contactTab,
  };
}

const _languageKey = 'language';

@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppStrings _strings = AppStrings.en;
  AppTab _current = AppTab.home;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      _strings = AppStrings.forLocale(
        _readSavedLanguage() ?? web.window.navigator.language,
      );
    }
  }

  String? _readSavedLanguage() {
    try {
      return web.window.localStorage.getItem(_languageKey);
    } catch (_) {
      return null;
    }
  }

  void _saveLanguage(String code) {
    try {
      web.window.localStorage.setItem(_languageKey, code);
    } catch (_) {
      // Persistence is best-effort (storage may be blocked or full).
    }
  }

  void _select(AppTab tab) {
    setState(() => _current = tab);
    web.document.querySelector('.panels')?.scrollTop = 0;
  }

  AppStrings get _nextStrings {
    const all = AppStrings.supported;
    return all[(all.indexOf(_strings) + 1) % all.length];
  }

  void _switchLanguage() {
    final next = _nextStrings;
    _saveLanguage(next.languageCode);
    setState(() => _strings = next);
  }

  Component _panel(AppTab tab, Component child) {
    return section(
      id: tab.name,
      classes: _current == tab ? 'panel active' : 'panel',
      [child],
    );
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'app', [
      Document.html(attributes: {'lang': _strings.languageCode}),
      nav(
        classes: 'tabs',
        attributes: {'aria-label': 'Sections'},
        [
          for (final tab in AppTab.values)
            button(
              classes: _current == tab ? 'tab active' : 'tab',
              attributes: {
                'type': 'button',
                'aria-controls': tab.name,
                if (_current == tab) 'aria-current': 'page',
              },
              onClick: () => _select(tab),
              [
                span(classes: 'icon icon-${tab.icon}', []),
                span(classes: 'tab-label', [
                  Component.text(tab.label(_strings)),
                ]),
              ],
            ),
          button(
            classes: 'lang-switch',
            attributes: {
              'type': 'button',
              'aria-label': _strings.switchLanguageLabel,
              'title': _strings.switchLanguageLabel,
            },
            onClick: _switchLanguage,
            [
              Component.text(_nextStrings.languageCode.toUpperCase()),
            ],
          ),
        ],
      ),
      div(classes: 'panels', [
        _panel(
          AppTab.home,
          HomeSection(
            strings: _strings,
            onContact: () => _select(AppTab.contact),
            onPortfolio: () => _select(AppTab.projects),
          ),
        ),
        _panel(AppTab.about, AboutSection(strings: _strings)),
        _panel(AppTab.articles, ArticlesSection(strings: _strings)),
        _panel(AppTab.projects, const ProjectsSection()),
        _panel(AppTab.contact, ContactSection(strings: _strings)),
      ]),
      a(href: 'https://jaspr.site', target: Target.blank, classes: 'credits', [
        Component.text('Built with Jaspr'),
      ]),
    ]);
  }
}
