import 'package:flutter/material.dart';

import 'my_input_field.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      label: 'Phone',
      hint: '+33 0 00 00 00 00',
    );
  }
}
