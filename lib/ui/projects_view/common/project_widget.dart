import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project_model.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel projectModel;

  ProjectWidget(this.projectModel);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.26;
    return Container(
      width: size,
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            projectModel.title,
            style: TextStyles.headerLine(context),
            textAlign: TextAlign.center,
          ),
          if (projectModel.description != null)
            Text(
              projectModel.description!,
              style: TextStyles.selectSubHeadline(context),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8),
          Wrap(
            children: projectModel.links
                .map<Widget>(
                  (e) => IconButton(
                    onPressed: () => launch(e.url),
                    icon: Icon(e.icon),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
