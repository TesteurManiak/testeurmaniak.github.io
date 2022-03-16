import 'package:flutter/material.dart';

import '../common/responsive_layout.dart';
import 'desktop/articles_desktop.dart';
import 'mobile/articles_mobile.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobile: ArticlesMobile(),
        desktop: ArticlesDesktop(),
      ),
    );
  }
}
