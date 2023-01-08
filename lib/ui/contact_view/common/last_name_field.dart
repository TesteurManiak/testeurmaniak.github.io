import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/contact_view/common/my_input_field.dart';

class LastNameField extends StatelessWidget {
  final TextEditingController controller;

  const LastNameField({Key? key, required this.controller}) : super(key: key);

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
