import 'package:flutter/material.dart';

import '../common/contact_header.dart';
import '../common/first_name_field.dart';
import '../common/last_name_field.dart';
import '../common/mail_field.dart';
import '../common/message_field.dart';
import '../common/name_fields_layout.dart';
import '../common/submit_button.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final _formKey = GlobalKey<FormState>();

  void _validateForm() {
    final formState = _formKey.currentState;
    if (formState != null) {
      formState.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
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
              child: SubmitButton(onPressed: _validateForm),
            ),
          ],
        ),
      ),
    );
  }
}
