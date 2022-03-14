import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'mobile/contact_mobile.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: ContactMobile(),
      desktop: SizedBox(),
    );
  }
}
