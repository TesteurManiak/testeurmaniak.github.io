import 'package:flutter/material.dart';
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
      label: 'Last Name',
      hint: 'Doe',
      required: true,
    );
  }
}
