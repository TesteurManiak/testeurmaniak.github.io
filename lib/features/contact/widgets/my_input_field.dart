import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    super.key,
    this.label,
    this.hint,
    this.keyboardType,
    this.required = false,
    this.maxLines,
    this.validator,
    this.controller,
  });

  final String? label;
  final String? hint;
  final bool required;
  final TextInputType? keyboardType;
  final int? maxLines;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: label != null ? '$label${required ? " *" : ""}' : null,
        hintText: hint,
        alignLabelWithHint: true,
      ),
      validator: (value) {
        if (required && (value == null || value.isEmpty)) {
          return '${label ?? "This field"} is required';
        }
        if (validator != null) return validator?.call(value);
        return null;
      },
    );
  }
}
