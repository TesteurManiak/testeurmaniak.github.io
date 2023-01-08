import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';
import 'package:my_portfolio/ui/contact_view/desktop/contact_desktop.dart';
import 'package:my_portfolio/ui/contact_view/mobile/contact_mobile.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView>
    with AutomaticKeepAliveClientMixin {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _validateForm() {
    final formState = _formKey.currentState;
    if (formState != null) {
      final isValid = formState.validate();
      if (isValid) {
        final emailLaunchUri = Uri(
          scheme: 'mailto',
          path: 'guillaume@floating-dartists.dev',
          queryParameters: <String, String>{
            'subject':
                'A mail from ${_firstNameController.text} ${_lastNameController.text}',
            'body': _messageController.text,
          },
        );
        launchUrlString(emailLaunchUri.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Form(
      key: _formKey,
      child: ResponsiveLayout(
        mobile: ContactMobile(
          firstNameController: _firstNameController,
          lastNameController: _lastNameController,
          messageController: _messageController,
          submitForm: _validateForm,
        ),
        desktop: ContactDesktop(
          firstNameController: _firstNameController,
          lastNameController: _lastNameController,
          messageController: _messageController,
          submitForm: _validateForm,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
