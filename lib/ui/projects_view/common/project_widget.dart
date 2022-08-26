import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../models/project_model.dart';
import '../../../style/text_styles.dart';
import '../../about_view/common/blurred_image.dart';
import '../../common/responsive_layout.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel projectModel;

  const ProjectWidget(this.projectModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
    final description = projectModel.description;
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        children: [
          if (projectModel.hasImage)
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.dstATop,
              ),
              child: BlurredImage(
                imageUrl: projectModel.imageUrl!,
                blurHash: projectModel.imageBlurHash!,
                fit: BoxFit.cover,
              ),
            ),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            color: Colors.white.withOpacity(0.2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (projectModel.iconAsset != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        projectModel.iconAsset!,
                        width: isDesktop ? 100 : 50,
                        height: isDesktop ? 100 : 50,
                      ),
                    ),
                  ),
                Text(
                  projectModel.title,
                  style: TextStyles.headerLine(context),
                  maxLines: isDesktop ? 3 : null,
                  textAlign: TextAlign.center,
                  overflow: isDesktop ? TextOverflow.ellipsis : null,
                ),
                if (description != null)
                  Text(
                    description,
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
                          onPressed: () => launchUrlString(e.url),
                          icon: Icon(e.icon),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
