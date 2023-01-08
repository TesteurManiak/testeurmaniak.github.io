import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extensions.dart';
import 'package:my_portfolio/features/about/views/about_view.dart';
import 'package:my_portfolio/features/articles/views/articles_view.dart';
import 'package:my_portfolio/features/root/widgets/credits_widget.dart';
import 'package:my_portfolio/style/text_styles.dart';
import 'package:my_portfolio/ui/contact_view/contact_view.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';
import 'package:my_portfolio/ui/projects_view/projects_view.dart';

class RootDesktop extends StatelessWidget {
  const RootDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * 0.05,
                child: const _CustomTabBar(),
              ),
              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HomeView(),
                    AboutView(),
                    ArticlesView(),
                    ProjectsView(),
                    ContactView(),
                  ],
                ),
              ),
            ],
          ),
          const CreditsWidget(),
        ],
      ),
    );
  }
}

class _CustomTabBar extends StatelessWidget {
  const _CustomTabBar();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentTheme = Theme.of(context);
    final strings = context.strings;

    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.05),
      child: Theme(
        data: currentTheme.copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            _Tab(label: strings.home_tab),
            _Tab(label: strings.about_tab),
            _Tab(label: strings.articles_tab),
            _Tab(label: strings.projects_tab),
            _Tab(label: strings.contact_tab),
          ],
        ),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(label, style: TextStyles.tab),
    );
  }
}
