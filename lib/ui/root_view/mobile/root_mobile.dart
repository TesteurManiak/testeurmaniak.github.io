import 'package:flutter/material.dart';

import '../../../bloc/bloc_provider.dart';
import '../../../bloc/navigation_bloc.dart';
import '../common/credits_widget.dart';

class RootMobile extends StatelessWidget {
  final TabController? controller;

  const RootMobile({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
      bottomNavigationBar: StreamBuilder<NavigationIndex>(
        stream: navigationBloc.onIndexChanged,
        initialData: navigationBloc.currentIndex,
        builder: (_, snapshot) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: snapshot.data!.index,
          items: navigationBloc.navigationElements
              .map<BottomNavigationBarItem>(
                (e) => BottomNavigationBarItem(
                  icon: Icon(e.icon),
                  label: e.label,
                ),
              )
              .toList(),
          onTap: (index) => controller?.animateTo(index),
        ),
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: controller,
            children: navigationBloc.navigationElements
                .map<Widget>((e) => e.page)
                .toList(),
          ),
          const CreditsWidget(),
        ],
      ),
    );
  }
}
