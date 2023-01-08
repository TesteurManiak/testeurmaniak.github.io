import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Text(
        "Let's get in touch!",
        style: theme.textTheme.headline3,
      ),
    );
  }
}
