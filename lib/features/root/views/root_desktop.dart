import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/core/widgets/custom_tab_bar.dart';
import 'package:my_portfolio/features/root/widgets/credits_widget.dart';

class RootDesktop extends StatelessWidget {
  final TabController controller;

  const RootDesktop({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
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
                  children: navigationBloc.navigationElements
                      .map<Widget>((e) => e.page)
                      .toList(),
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
