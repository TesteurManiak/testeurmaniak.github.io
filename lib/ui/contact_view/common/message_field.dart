import 'package:flutter/material.dart';

import '../../common/responsive_layout.dart';
import 'my_input_field.dart';

class MessageField extends StatelessWidget {
  const MessageField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
    return MyInputField(
      hint: 'Type your message here',
      required: true,
      keyboardType: TextInputType.multiline,
      maxLines: isDesktop ? 9 : 7,
    );
  }
}
