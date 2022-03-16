import 'package:flutter/material.dart';

import '../common/contact_header.dart';
import '../common/mail_field.dart';
import '../common/message_field.dart';
import '../common/name_fields_layout.dart';
import '../common/submit_button.dart';

class ContactDesktop extends StatelessWidget {
  final VoidCallback submitForm;

  const ContactDesktop({Key? key, required this.submitForm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.45;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ContactHeader(),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: const NameFieldsLayout(),
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: const MailField(),
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: const MessageField(),
        ),
        const SizedBox(height: 16),
        SubmitButton(onPressed: submitForm),
      ],
    );
  }
}
