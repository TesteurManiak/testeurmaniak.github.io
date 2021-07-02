import 'package:flutter/material.dart';
import 'package:my_portfolio/style/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hello, I am\n',
            style: TextStyles.headerLine(context),
          ),
          TextSpan(
            text: 'Guillaume\nRoux\n',
            style: TextStyles.headerName(context),
          ),
          TextSpan(
            text: 'Flutter Developer',
            style: TextStyles.selectSubHeadline(context),
          ),
        ],
      ),
    );
  }
}
