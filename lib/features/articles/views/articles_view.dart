import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  void initState() {
    super.initState();
    ref.read(articleListControllerProvider.notifier).fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return const Scaffold(
      body: ResponsiveLayout(
        mobile: ArticlesMobile(),
        desktop: ArticlesDesktop(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
