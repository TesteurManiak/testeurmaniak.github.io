import 'package:flutter/material.dart';

import 'first_name_field.dart';
import 'last_name_field.dart';

class NameFieldsLayout extends StatelessWidget {
  const NameFieldsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: FirstNameField()),
        SizedBox(width: 16),
        Expanded(child: LastNameField()),
      ],
    );
  }
}
