/// The entrypoint for the **server** environment, executed during pre-rendering.
library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

const _title = 'Guillaume Roux - Flutter Developer';
const _description =
    "Hi, I'm Guillaume Roux! Welcome to my Flutter Portfolio, showcasing articles, projects and contributions to the open source community.";
const _url = 'https://rouxguillau.me/';
const _image = '${_url}assets/avatar.png';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: _title,
      lang: 'en',
      meta: {
        'description': _description,
        'keywords':
            'flutter, dart, developer, software engineer, portfolio, open source, guillaume, roux',
        'theme-color': '#0E0C38',
        'twitter:card': 'summary_large_image',
        'twitter:site': '@testeurmaniak',
        'twitter:title': _title,
        'twitter:description': _description,
        'twitter:image': _image,
        'apple-mobile-web-app-capable': 'yes',
        'apple-mobile-web-app-status-bar-style': 'black',
        'apple-mobile-web-app-title': _title,
      },
      head: [
        const meta(attributes: {'property': 'og:title', 'content': _title}),
        const meta(
          attributes: {'property': 'og:description', 'content': _description},
        ),
        const meta(attributes: {'property': 'og:url', 'content': _url}),
        const meta(attributes: {'property': 'og:image', 'content': _image}),
        const link(href: '/favicon.ico', rel: 'icon'),
        const link(
          href: '/icons/apple-touch-icon.png',
          rel: 'apple-touch-icon',
        ),
        const link(href: '/manifest.json', rel: 'manifest'),
        const link(
          href: 'https://fonts.googleapis.com/css?family=Roboto:400,500,700',
          rel: 'stylesheet',
        ),
        const link(href: '/styles.css', rel: 'stylesheet'),
      ],
      body: const App(),
    ),
  );
}
