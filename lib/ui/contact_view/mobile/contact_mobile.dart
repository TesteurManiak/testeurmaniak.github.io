import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/contact_view/common/contact_header.dart';
import 'package:my_portfolio/ui/contact_view/common/message_field.dart';
import 'package:my_portfolio/ui/contact_view/common/name_fields_layout.dart';
import 'package:my_portfolio/ui/contact_view/common/submit_button.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.messageController,
    required this.submitForm,
  });

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController messageController;
  final VoidCallback submitForm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContactHeader(),
          NameFieldsLayout(
            firstNameController: firstNameController,
            lastNameController: lastNameController,
          ),
          const SizedBox(height: 8),
          MessageField(controller: messageController),
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
