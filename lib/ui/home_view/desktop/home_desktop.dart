import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/home_view/common/header_widget.dart';
import 'package:my_portfolio/ui/home_view/common/link_buttons.dart';
import 'package:my_portfolio/ui/home_view/common/my_buttons.dart';
import 'package:my_portfolio/ui/home_view/common/profile_picture.dart';

class HomeDesktop extends StatelessWidget {
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
              HeaderWidget(),
              SizedBox(height: size.height * 0.05),
              LinkButtons(),
              SizedBox(height: size.height * 0.05),
              MyButtons(),
            ],
          ),
        ),
        SizedBox(width: size.width * 0.03),
        ProfilePicture(),
      ],
    );
  }
}
