import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/ui/common/custom_drawer.dart';

class RootMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: TabBarView(
        controller: navigationBloc.tabController,
        children: navigationBloc.navigationElements
            .map<Widget>((e) => e.page)
            .toList(),
      ),
    );
  }
}
