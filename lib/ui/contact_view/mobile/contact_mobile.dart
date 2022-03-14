import 'package:flutter/material.dart';

import '../common/first_name_field.dart';
import '../common/last_name_field.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Expanded(child: FirstNameField()),
                SizedBox(width: 16),
                Expanded(child: LastNameField()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
