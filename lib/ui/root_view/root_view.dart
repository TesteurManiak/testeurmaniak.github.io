import 'package:flutter/material.dart';

import '../../bloc/bloc_provider.dart';
import '../../bloc/navigation_bloc.dart';
import '../common/responsive_layout.dart';
import 'desktop/root_desktop.dart';
import 'mobile/root_mobile.dart';

class RootView extends StatefulWidget {
  static const routeName = 'root';

  const RootView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RootViewState();
}

class _RootViewState extends State<RootView>
    with SingleTickerProviderStateMixin {
  late final _navigationBloc = BlocProvider.of<NavigationBloc>(context);

  @override
  void initState() {
    super.initState();
    _navigationBloc.initTabController(
      TabController(
        length: _navigationBloc.navigationElements.length,
        vsync: this,
        initialIndex: _navigationBloc.currentIndex.index,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: RootMobile(),
      desktop: RootDesktop(),
    );
  }
}
