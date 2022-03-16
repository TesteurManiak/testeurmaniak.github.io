import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/contact_desktop.dart';
import 'mobile/contact_mobile.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final _formKey = GlobalKey<FormState>();

  void _validateForm() {
    final formState = _formKey.currentState;
    if (formState != null) {
      formState.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ResponsiveLayout(
        mobile: ContactMobile(submitForm: _validateForm),
        desktop: ContactDesktop(submitForm: _validateForm),
      ),
    );
  }
}
