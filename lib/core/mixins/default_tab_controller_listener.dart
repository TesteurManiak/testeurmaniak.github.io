import 'package:flutter/material.dart';

@optionalTypeArgs
mixin DefaultTabControllerListenerMixin<T extends StatefulWidget> on State<T> {
  TabController? _tabController;

  @protected
  TabController? get tabController => _tabController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _tabController?.removeListener(handleTabChanged);
    _tabController = DefaultTabController.maybeOf(context);
    _tabController?.addListener(handleTabChanged);
  }

  @override
  void dispose() {
    _tabController?.removeListener(handleTabChanged);
    super.dispose();
  }

  @protected
  void handleTabChanged();
}
