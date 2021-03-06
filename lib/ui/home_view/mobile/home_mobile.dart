import 'package:flutter/material.dart';

import '../common/header_widget.dart';
import '../common/link_buttons.dart';
import '../common/my_buttons.dart';
import '../common/profile_picture.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const ProfilePicture(),
          SizedBox(height: size.height * 0.02),
          const HeaderWidget(),
          SizedBox(height: size.height * 0.02),
          const LinkButtons(),
          SizedBox(height: size.height * 0.02),
          const MyButtons(),
        ],
      ),
    );
  }
}
