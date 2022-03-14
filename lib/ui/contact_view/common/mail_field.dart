import 'package:flutter/material.dart';

import '../../../core/validators.dart';
import 'my_input_field.dart';

class MailField extends StatelessWidget {
  const MailField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      label: 'Mail',
      hint: 'myemail@mail.com',
      required: true,
      validator: Validators.email,
    );
  }
}
