import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/core/size_utils.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final strings = context.strings;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextRenderer(
              text: strings.about_section_title,
              child: Text(
                strings.about_section_title,
                style: TextStyles.headerLine(context),
              ),
            ),
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
        TextRenderer(
          text: strings.about_section_description,
          child: Text(
            strings.about_section_description,
            style: TextStyles.selectSubHeadline(context),
          ),
        ),
        SizedBox(height: size.height * 0.05),
        LinkRenderer(
          text: strings.contact_me,
          href: strings.my_resume_link,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: paddingVertical(size.height),
                horizontal: paddingHorizontal(size.width),
              ),
            ),
            onPressed: () => launchUrlString(strings.my_resume_link),
            child: Text(strings.my_resume_button),
          ),
        ),
      ],
    );
  }
}
