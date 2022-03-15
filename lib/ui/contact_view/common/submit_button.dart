import 'package:flutter/material.dart';

import '../../common/responsive_layout.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
    String label = 'Submit';
    if (!isDesktop) {
      label = label.toUpperCase();
    }
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
