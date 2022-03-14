import 'package:flutter/material.dart';

import 'my_input_field.dart';

class FirstNameField extends StatelessWidget {
  const FirstNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      label: 'First name',
      hint: 'John',
      required: true,
    );
  }
}
