import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact/widgets/contact_header.dart';
import 'package:my_portfolio/features/contact/widgets/message_field.dart';
import 'package:my_portfolio/features/contact/widgets/name_fields_layout.dart';
import 'package:my_portfolio/features/contact/widgets/submit_button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({
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
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.45;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ContactHeader(),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: NameFieldsLayout(
            firstNameController: firstNameController,
            lastNameController: lastNameController,
          ),
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: MessageField(controller: messageController),
        ),
        const SizedBox(height: 16),
        SubmitButton(onPressed: submitForm),
      ],
    );
  }
}
