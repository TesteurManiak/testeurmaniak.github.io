import 'package:flutter/material.dart';

import '../common/contact_header.dart';
import '../common/mail_field.dart';
import '../common/message_field.dart';
import '../common/name_fields_layout.dart';
import '../common/submit_button.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  final _formKey = GlobalKey<FormState>();

  void _validateForm() {
    final formState = _formKey.currentState;
    if (formState != null) {
      formState.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.45;
    return Form(
      key: _formKey,
      child: Column(
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
          SubmitButton(onPressed: _validateForm),
        ],
      ),
    );
  }
}
