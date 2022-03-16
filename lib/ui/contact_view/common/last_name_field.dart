import 'package:flutter/material.dart';

import 'my_input_field.dart';

class LastNameField extends StatelessWidget {
  const LastNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      label: 'Last Name',
      hint: 'Doe',
      required: true,
    );
  }
}
