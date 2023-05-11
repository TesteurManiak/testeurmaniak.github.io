import 'package:flutter/material.dart';
import 'package:my_portfolio/core/icons/my_portfolio_icons.dart';
import 'package:my_portfolio/core/mixins/default_tab_controller_listener.dart';
import 'package:my_portfolio/features/about/views/about_view.dart';
import 'package:my_portfolio/features/articles/views/articles_view.dart';
import 'package:my_portfolio/features/contact/views/contact_view.dart';
import 'package:my_portfolio/features/home/views/home_view.dart';
import 'package:my_portfolio/features/projects/views/projects_view.dart';
import 'package:my_portfolio/features/root/widgets/credits_widget.dart';

class RootMobile extends StatelessWidget {
  const RootMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: _BottomBar(),
      body: Stack(
        children: [
          TabBarView(
            children: [
              HomeView(),
              AboutView(),
              ArticlesView(),
              ProjectsView(),
              ContactView(),
            ],
          ),
          CreditsWidget(),
        ],
      ),
    );
  }
}

class _BottomBar extends StatefulWidget {
  const _BottomBar();

  @override
  State<_BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<_BottomBar>
    with DefaultTabControllerListenerMixin {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(MyPortfolio.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyPortfolio.person),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyPortfolio.doc_text_inv),
          label: 'Articles',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyPortfolio.code),
          label: 'Projects',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyPortfolio.contact_mail),
          label: 'Contact',
        ),
      ],
      onTap: tabController?.animateTo,
    );
  }

  @override
  void handleTabChanged() {
    setState(() => selectedIndex = tabController?.index ?? 0);
  }
}
