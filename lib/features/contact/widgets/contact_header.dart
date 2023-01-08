import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Text(
        context.strings.contact_section_title,
        style: theme.textTheme.headline3,
      ),
    );
  }
}
