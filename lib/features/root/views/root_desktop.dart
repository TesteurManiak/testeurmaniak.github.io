import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_tab_bar.dart';
import 'package:my_portfolio/features/about/views/about_view.dart';
import 'package:my_portfolio/features/articles/views/articles_view.dart';
import 'package:my_portfolio/features/root/widgets/credits_widget.dart';
import 'package:my_portfolio/ui/contact_view/contact_view.dart';
import 'package:my_portfolio/ui/home_view/home_view.dart';
import 'package:my_portfolio/ui/projects_view/projects_view.dart';

class RootDesktop extends StatelessWidget {
  final TabController controller;

  const RootDesktop({Key? key, required this.controller}) : super(key: key);

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
                child: CustomTabBar(controller: controller),
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: const [
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
