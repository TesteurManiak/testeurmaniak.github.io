import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/ui/common/custom_tab_bar.dart';

class RootDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: size.height * 0.05,
            child: CustomTabBar(controller: navigationBloc.tabController),
          ),
          Expanded(
            child: TabBarView(
              controller: navigationBloc.tabController,
              children: navigationBloc.navigationElements
                  .map<Widget>((e) => e.page)
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
