import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool required;

  const MyInputField({
    Key? key,
    this.label,
    this.hint,
    this.required = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '$label${required ? " *" : ""}',
        hintText: hint,
      ),
      validator: (value) {
        if (required && (value == null || value.isEmpty)) {
          return '$label is required';
        }
        return null;
      },
    );
  }
}
