import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/articles_desktop.dart';
import 'mobile/articles_mobile.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView>
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
