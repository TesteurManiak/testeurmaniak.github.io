import 'package:flutter/material.dart';

import '../../../style/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
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
            text: 'Flutter Software Engineer',
            style: TextStyles.selectSubHeadline(context),
          ),
        ],
      ),
    );
  }
}
