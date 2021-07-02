import 'package:flutter/material.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:my_portfolio/utils/size_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('About me', style: TextStyles.headerLine(context)),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                decoration: BoxDecoration(
                  color: MyColors.indicator,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          "I've been using Flutter since September 2018. Since then I've been able to work on a lot of projects each with its own problematics. You will find on this website some applications made during my spare time and some made as part of my job as a mobile developer. You will also find some articles related to Dart and Flutter that I am writting on the site Medium.com and Dart/Flutter packages I have released on Pub.dev.",
          style: TextStyles.selectSubHeadline(context),
        ),
        SizedBox(height: size.height * 0.05),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: paddingVertical(size.height),
              horizontal: paddingHorizontal(size.width),
            ),
          ),
          onPressed: () => launch(
              'https://drive.google.com/file/d/1aeMIfW6Ee7u8HQJaqIGWYXOeiicvUP1t/view?usp=sharing'),
          child: const Text('Get my Resume'),
        ),
      ],
    );
  }
}
