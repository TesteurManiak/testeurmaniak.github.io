import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool required;
  final TextInputType? keyboardType;
  final int? maxLines;

  const MyInputField({
    Key? key,
    this.label,
    this.hint,
    this.keyboardType,
    this.required = false,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label != null ? '$label${required ? " *" : ""}' : null,
        hintText: hint,
      ),
      validator: (value) {
        if (required && (value == null || value.isEmpty)) {
          return '${label ?? "This field"} is required';
        }
        return null;
      },
    );
  }
}
