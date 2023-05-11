import 'package:flutter/material.dart';
import 'package:my_portfolio/core/models/project_model.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget(this.projectModel, {super.key});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveLayoutBuilder.isDesktop(context);
    final description = projectModel.description;
    final imageUrl = projectModel.imageUrl;
    final iconUrl = projectModel.iconUrl;

    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Stack(
        children: [
          if (imageUrl != null)
            Positioned.fill(
              child: _BackgroundImage(imageUrl),
            ),
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            color: Colors.white.withOpacity(0.2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconUrl != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _AppIconImage(
                      src: iconUrl,
                      isDesktop: isDesktop,
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

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage(this.src);

  final String src;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.1),
        BlendMode.dstATop,
      ),
      child: Image.network(
        src,
        loadingBuilder: (_, child, progress) {
          if (progress == null) return child;

          return const _Placeholder(size: double.maxFinite);
        },
        fit: BoxFit.cover,
      ),
    );
  }
}

class _AppIconImage extends StatelessWidget {
  const _AppIconImage({
    required this.src,
    required bool isDesktop,
  }) : size = isDesktop ? 100 : 50;

  final String src;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        src,
        width: size,
        height: size,
        loadingBuilder: (_, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: _Placeholder(size: size),
          );
        },
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({
    this.size,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: size,
      width: size,
    );
  }
}
