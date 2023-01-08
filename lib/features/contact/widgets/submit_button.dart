import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayoutBuilder.isDesktop(context);
    final strings = context.strings;
    final label = isDesktop
        ? strings.contact_section_send
        : strings.contact_section_send.toUpperCase();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 16, horizontal: isDesktop ? 32 : 16),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
