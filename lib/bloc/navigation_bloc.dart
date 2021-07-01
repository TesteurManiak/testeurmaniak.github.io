import 'package:my_portfolio/bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

enum NavigationIndex { home }

class NavigationBloc extends BlocBase {
  final _navigationController =
      BehaviorSubject<NavigationIndex>.seeded(NavigationIndex.home);
  Stream<NavigationIndex> get onIndexChanged => _navigationController.stream;
  NavigationIndex get currentIndex => _navigationController.value;

  @override
  void dispose() {
    _navigationController.close();
  }

  @override
  void initState() {}

  void goToPage(NavigationIndex index) => _navigationController.sink.add(index);
}
