import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/ui/contact_view/common/my_input_field.dart';

class MessageField extends StatelessWidget {
  final TextEditingController controller;

  const MessageField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
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
