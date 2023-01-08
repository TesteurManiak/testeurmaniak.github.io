import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/ui/articles_view/desktop/articles_desktop.dart';
import 'package:my_portfolio/ui/articles_view/mobile/articles_mobile.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';

class ArticlesView extends ConsumerStatefulWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  ConsumerState<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends ConsumerState<ArticlesView>
    with AutomaticKeepAliveClientMixin {
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
