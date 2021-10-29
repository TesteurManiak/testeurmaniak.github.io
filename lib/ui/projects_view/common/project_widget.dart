import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/project_model.dart';
import '../../../style/text_styles.dart';
import '../../common/responsive_layout.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel projectModel;

  const ProjectWidget(this.projectModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white.withOpacity(0.2),
        image: projectModel.imageAsset != null
            ? DecorationImage(
                image: AssetImage(projectModel.imageAsset!),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1),
                  BlendMode.dstATop,
                ),
              )
            : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            projectModel.title,
            style: TextStyles.headerLine(context),
            maxLines: isDesktop ? 3 : null,
            textAlign: TextAlign.center,
            overflow: isDesktop ? TextOverflow.ellipsis : null,
          ),
          if (projectModel.description != null)
            Text(
              projectModel.description!,
              style: TextStyles.selectSubHeadline(context),
              textAlign: TextAlign.center,
              maxLines: isDesktop ? 2 : null,
              overflow: isDesktop ? TextOverflow.ellipsis : null,
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
