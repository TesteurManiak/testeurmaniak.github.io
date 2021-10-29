import 'package:flutter/material.dart';

import '../../../bloc/bloc_provider.dart';
import '../../../bloc/navigation_bloc.dart';
import '../../common/custom_tab_bar.dart';
import '../common/credits_widget.dart';

class RootDesktop extends StatelessWidget {
  const RootDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
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
          const Align(
            alignment: Alignment.bottomRight,
            child: CreditsWidget(),
          ),
        ],
      ),
    );
  }
}
