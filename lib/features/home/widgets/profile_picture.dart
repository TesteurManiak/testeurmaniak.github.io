import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/style/my_colors.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';

const _imageUrl =
    'https://raw.githubusercontent.com/TesteurManiak/testeurmaniak.github.io/main/assets/avatar.png';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    final imgSize = ResponsiveLayoutBuilder.isDesktop(context) ? 400.0 : 250.0;

    return ImageRenderer(
      alt: 'Profile picture',
      src: _imageUrl,
      child: SizedBox(
        height: imgSize,
        width: imgSize,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(imgSize / 2),
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              MyColors.scaffold,
              BlendMode.color,
            ),
            child: Image.network(
              _imageUrl,
              loadingBuilder: (_, child, progress) {
                if (progress == null) return child;

                return _Placeholder(imgSize);
              },
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
