import 'package:flutter/material.dart';

import 'my_input_field.dart';

class MessageField extends StatelessWidget {
  const MessageField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyInputField(
      hint: 'Type your message here',
      required: true,
      keyboardType: TextInputType.multiline,
      maxLines: 7,
    );
  }
}
