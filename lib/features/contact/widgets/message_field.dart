import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/contact/widgets/my_input_field.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayoutBuilder.isDesktop(context);
    return MyInputField(
      hint: 'Type your message here',
      label: 'Message',
      required: true,
      keyboardType: TextInputType.multiline,
      maxLines: isDesktop ? 9 : 7,
      controller: controller,
    );
  }
}
