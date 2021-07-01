import 'package:flutter/material.dart';
import 'package:my_portfolio/bloc/bloc_provider.dart';
import 'package:my_portfolio/bloc/navigation_bloc.dart';
import 'package:my_portfolio/ui/common/responsive_layout.dart';
import 'package:my_portfolio/ui/root_view/desktop/root_desktop.dart';
import 'package:my_portfolio/ui/root_view/mobile/root_mobile.dart';

class RootView extends StatefulWidget {
  static const routeName = '/root';

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
    return ResponsiveLayout(
      mobile: RootMobile(),
      desktop: RootDesktop(),
    );
  }
}
