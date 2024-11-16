import 'package:mobx/mobx.dart';
part 'app_root_controller.g.dart';

class AppRootController = AppRootControllerBase with _$AppRootController;

abstract class AppRootControllerBase with Store {
  @observable
  int _selectedIndex = 0;
  @computed
  int get selectedIndex => _selectedIndex;
  @action
  void setSelectedIndex(int index) {
    _selectedIndex = index;
  }
}
