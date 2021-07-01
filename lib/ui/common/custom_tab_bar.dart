import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/ui/common/custom_tab.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;

  CustomTabBar({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentTheme = Theme.of(context);
    final tabScaling = ResponsiveLayout.isDesktop(context) ? 0.21 : 0.4;
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.05),
      width: size.width * tabScaling,
      child: Theme(
        data: currentTheme.copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: TabBar(
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
