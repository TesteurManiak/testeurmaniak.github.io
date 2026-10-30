import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../l10n/strings.dart';

const _contactEmail = 'guillaume@floating-dartists.dev';

class ContactSection extends StatefulComponent {
  const ContactSection({required this.strings, super.key});

  final AppStrings strings;

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  String _firstName = '';
  String _lastName = '';
  String _message = '';

  void _submit() {
    final subject = Uri.encodeComponent('A mail from $_firstName $_lastName');
    final body = Uri.encodeComponent(_message);
    web.window.location.href =
        'mailto:$_contactEmail?subject=$subject&body=$body';
  }

  @override
  Component build(BuildContext context) {
    final strings = component.strings;

    return div(classes: 'contact', [
      h2([Component.text(strings.contactTitle)]),
      form(
        classes: 'contact-form',
        events: {
          'submit': (event) {
            event.preventDefault();
            _submit();
          },
        },
        [
          div(classes: 'contact-names', [
            input<String>(
              type: InputType.text,
              name: 'first-name',
              classes: 'field',
              attributes: {
                'required': '',
                'placeholder': strings.contactFirstName,
                'autocomplete': 'given-name',
                'aria-label': strings.contactFirstName,
              },
              onInput: (value) => _firstName = value,
            ),
            input<String>(
              type: InputType.text,
              name: 'last-name',
              classes: 'field',
              attributes: {
                'required': '',
                'placeholder': strings.contactLastName,
                'autocomplete': 'family-name',
                'aria-label': strings.contactLastName,
              },
              onInput: (value) => _lastName = value,
            ),
          ]),
          textarea(
            [],
            name: 'message',
            classes: 'field',
            rows: 6,
            required: true,
            placeholder: strings.contactMessageHint,
            attributes: {'aria-label': strings.contactMessage},
            onInput: (value) => _message = value,
          ),
          button(type: ButtonType.submit, classes: 'btn btn-primary', [
            Component.text(strings.contactSend),
          ]),
        ],
      ),
    ]);
  }
}
