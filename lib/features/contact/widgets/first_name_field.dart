import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact/widgets/my_input_field.dart';

class FirstNameField extends StatelessWidget {
  const FirstNameField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return MyInputField(
      controller: controller,
      label: 'First Name',
      hint: 'John',
      required: true,
    );
  }
}
