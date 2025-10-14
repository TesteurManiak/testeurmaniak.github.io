import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/style/text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${strings.home_header_hello}\n',
            style: TextStyles.headerLine(context),
          ),
          TextSpan(
            text: '${strings.global_firstname}\n${strings.global_lastname}\n',
            style: TextStyles.headerName(context),
          ),
          TextSpan(
            text: strings.home_header_position,
            style: TextStyles.selectSubHeadline(context),
          ),
        ],
      ),
    );
  }
}
