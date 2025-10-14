import 'package:flutter/material.dart';
import 'package:my_portfolio/features/contact/widgets/first_name_field.dart';
import 'package:my_portfolio/features/contact/widgets/last_name_field.dart';

class NameFieldsLayout extends StatelessWidget {
  const NameFieldsLayout({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(child: FirstNameField(controller: firstNameController)),
        Expanded(child: LastNameField(controller: lastNameController)),
      ],
    );
  }
}
