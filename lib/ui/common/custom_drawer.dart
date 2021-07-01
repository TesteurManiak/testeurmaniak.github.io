import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Drawer(
      child: ListView(
        children: navigationBloc.navigationElements
            .map<Widget>(
              (e) => ListTile(
                title: Text(e.label),
                onTap: () => navigationBloc.goToPage(e.index),
              ),
            )
            .toList(),
      ),
    );
  }
}
