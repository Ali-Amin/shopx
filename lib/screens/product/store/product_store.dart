import 'dart:async';

import 'package:mobx/mobx.dart';
part 'product_store.g.dart';

class ProductStore = ProductStoreBase with _$ProductStore;

abstract class ProductStoreBase with Store {
  @observable
  double infoCardVerticalPosition = 250;

  @observable
  double infoCardOpacity = 0.1;

  @observable
  int page = 0;

  @observable
  int quantity = 0;

  @action
  void startAnimation() {
    Timer(Duration(milliseconds: 50), () {
      infoCardVerticalPosition = 0;
      infoCardOpacity = 1;
    });
  }

  @action
  void setPageIndex(int index) {
    page = index;
  }

  @action
  void incrementQuantity() {
    quantity++;
  }

  @action
  void decrementQuantity() {
    if (quantity > 0) {
      quantity--;
    }
  }

  @action
  void addToCart() {
    quantity = 0;
  }
}
