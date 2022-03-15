import 'package:flutter/material.dart';

import '../common/contact_header.dart';
import '../common/mail_field.dart';
import '../common/message_field.dart';
import '../common/name_fields_layout.dart';
import '../common/submit_button.dart';

class ContactMobile extends StatelessWidget {
  final VoidCallback submitForm;

  const ContactMobile({Key? key, required this.submitForm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContactHeader(),
          const NameFieldsLayout(),
          const SizedBox(height: 8),
          const MailField(),
          const SizedBox(height: 8),
          const MessageField(),
          const SizedBox(height: 16),
          SizedBox(
            width: double.maxFinite,
            child: SubmitButton(onPressed: submitForm),
          ),
        ],
      ),
    );
  }
}
