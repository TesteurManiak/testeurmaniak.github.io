import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/header_widget.dart';
import 'package:my_portfolio/features/home/widgets/link_buttons.dart';
import 'package:my_portfolio/features/home/widgets/my_buttons.dart';
import 'package:my_portfolio/features/home/widgets/profile_picture.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: size.height * .02,
        children: [
          const ProfilePicture(),
          const HeaderWidget(),
          const LinkButtons(),
          const MyButtons(),
        ],
      ),
    );
  }
}
