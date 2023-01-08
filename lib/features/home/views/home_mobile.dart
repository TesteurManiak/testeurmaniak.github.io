import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/header_widget.dart';
import 'package:my_portfolio/features/home/widgets/link_buttons.dart';
import 'package:my_portfolio/features/home/widgets/my_buttons.dart';
import 'package:my_portfolio/features/home/widgets/profile_picture.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

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
