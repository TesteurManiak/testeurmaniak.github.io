import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/core/loadable.dart';
import 'package:my_portfolio/core/widgets/responsive_layout.dart';
import 'package:my_portfolio/features/articles/controllers/articles_controller.dart';
import 'package:my_portfolio/features/articles/views/articles_desktop.dart';
import 'package:my_portfolio/features/articles/views/articles_mobile.dart';

class ArticlesView extends ConsumerStatefulWidget {
  const ArticlesView({super.key});

  @override
  ConsumerState<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends ConsumerState<ArticlesView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return LoadableLoader(
      loadable: ref.read(articleListControllerProvider.notifier),
      child: Scaffold(
        body: ResponsiveLayoutBuilder(
          mobile: (_) => const ArticlesMobile(),
          desktop: (_) => const ArticlesDesktop(),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
