import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/features/contact/widgets/my_input_field.dart';

class LastNameField extends StatelessWidget {
  const LastNameField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return MyInputField(
      controller: controller,
      label: context.strings.contact_section_lastname,
      hint: 'Doe',
      required: true,
    );
  }
}
