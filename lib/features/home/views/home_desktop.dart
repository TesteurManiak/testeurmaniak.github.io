import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/header_widget.dart';
import 'package:my_portfolio/features/home/widgets/link_buttons.dart';
import 'package:my_portfolio/features/home/widgets/my_buttons.dart';
import 'package:my_portfolio/features/home/widgets/profile_picture.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * .45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: size.height * .05,
            children: [
              const HeaderWidget(),
              const LinkButtons(),
              const MyButtons(),
            ],
          ),
        ),
        SizedBox(width: size.width * .03),
        const ProfilePicture(),
      ],
    );
  }
}
