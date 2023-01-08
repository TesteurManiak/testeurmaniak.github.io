import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
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
    final strings = context.strings;
    final isDesktop = ResponsiveLayoutBuilder.isDesktop(context);

    return MyInputField(
      hint: strings.contact_section_message_hint,
      label: strings.contact_section_message,
      required: true,
      keyboardType: TextInputType.multiline,
      maxLines: isDesktop ? 9 : 7,
      controller: controller,
    );
  }
}
