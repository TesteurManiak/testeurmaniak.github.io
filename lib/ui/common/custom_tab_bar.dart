import 'package:flutter/material.dart';

import '../../bloc/bloc_provider.dart';
import '../../bloc/navigation_bloc.dart';
import 'custom_tab.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;

  const CustomTabBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentTheme = Theme.of(context);
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
          controller: controller,
          tabs: BlocProvider.of<NavigationBloc>(context)
              .navigationElements
              .map<Widget>((e) => CustomTab(label: e.label))
              .toList(),
        ),
      ),
    );
  }
}
