import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/ui/root_view/common/credits_widget.dart';

class RootMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
      bottomNavigationBar: StreamBuilder<NavigationIndex>(
        stream: navigationBloc.onIndexChanged,
        initialData: navigationBloc.currentIndex,
        builder: (_, snapshot) => BottomNavigationBar(
          currentIndex: snapshot.data!.index,
          items: navigationBloc.navigationElements
              .map<BottomNavigationBarItem>(
                (e) => BottomNavigationBarItem(
                  icon: Icon(e.icon),
                  label: e.label,
                ),
              )
              .toList(),
          onTap: (index) =>
              navigationBloc.goToPage(NavigationIndex.values[index]),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: navigationBloc.tabController,
              children: navigationBloc.navigationElements
                  .map<Widget>((e) => e.page)
                  .toList(),
            ),
          ),
          CreditsWidget(),
        ],
      ),
    );
  }
}
