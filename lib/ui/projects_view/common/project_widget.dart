import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/project_model.dart';
import '../../../style/text_styles.dart';
import '../../common/responsive_layout.dart';

class ProjectWidget extends StatefulWidget {
  final ProjectModel projectModel;

  const ProjectWidget(this.projectModel, {Key? key}) : super(key: key);

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  late final _projectImage = widget.projectModel.imageAsset != null
      ? AssetImage(widget.projectModel.imageAsset!)
      : null;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_projectImage != null) {
      precacheImage(_projectImage!, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayout.isDesktop(context);
    final description = widget.projectModel.description;
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white.withOpacity(0.2),
        image: _projectImage != null
            ? DecorationImage(
                image: _projectImage!,
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
            widget.projectModel.title,
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
            children: widget.projectModel.links
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
