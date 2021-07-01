import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/common/custom_drawer.dart';
import 'package:my_portfolio/ui/home_view/common/header_widget.dart';
import 'package:my_portfolio/ui/home_view/common/link_buttons.dart';
import 'package:my_portfolio/ui/home_view/common/profile_picture.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePicture(),
            SizedBox(height: size.height * 0.02),
            HeaderWidget(),
            SizedBox(height: size.height * 0.02),
            LinkButtons(),
          ],
        ),
      ),
    );
  }
}
