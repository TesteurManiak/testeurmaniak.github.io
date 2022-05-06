import 'package:flutter/material.dart';

import 'my_input_field.dart';

class FirstNameField extends StatelessWidget {
  final TextEditingController controller;

  const FirstNameField({Key? key, required this.controller}) : super(key: key);

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
