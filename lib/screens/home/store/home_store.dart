import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int activeNavBarIndex = 0;

  @action
  void changeNavBarIndex(int index) {
    activeNavBarIndex = index;
  }
}
