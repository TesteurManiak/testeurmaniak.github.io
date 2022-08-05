import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../../../style/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      child: RichText(
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
              text: 'Flutter Software Engineer',
              style: TextStyles.selectSubHeadline(context),
            ),
          ],
        ),
      ),
    );
  }
}
