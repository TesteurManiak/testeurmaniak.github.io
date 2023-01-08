import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/header_widget.dart';
import 'package:my_portfolio/features/home/widgets/link_buttons.dart';
import 'package:my_portfolio/features/home/widgets/my_buttons.dart';
import 'package:my_portfolio/features/home/widgets/profile_picture.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              SizedBox(height: size.height * 0.05),
              const LinkButtons(),
              SizedBox(height: size.height * 0.05),
              const MyButtons(),
            ],
          ),
        ),
        SizedBox(width: size.width * 0.03),
        const ProfilePicture(),
      ],
    );
  }
}
