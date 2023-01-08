import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/contact_view/common/first_name_field.dart';
import 'package:my_portfolio/ui/contact_view/common/last_name_field.dart';

class NameFieldsLayout extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const NameFieldsLayout({
    Key? key,
    required this.firstNameController,
    required this.lastNameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: FirstNameField(controller: firstNameController)),
        const SizedBox(width: 16),
        Expanded(
          child: LastNameField(
            controller: lastNameController,
          ),
        ),
      ],
    );
  }
}
