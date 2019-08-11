import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:shoptronics/data_models/category.dart';
import 'package:shoptronics/services/database_api.dart';

import '../data_models/product.dart';
part 'store.g.dart';

DatabaseAPI _api = DatabaseAPI();

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  ObservableList<Category> categories = ObservableList<Category>.of([]);

  @observable
  ObservableList<Product> products = ObservableList<Product>.of([]);

  @computed
  Category get currentlySelectedCategory =>
      Category.fromJson({'name': "mobiles", 'uid': 'pAeUJQbH7Bidzg0yzbGy'});

  @action
  void fetchCategories() {
    _api.fetchCategories.then((QuerySnapshot query) {
      query.documents.forEach((DocumentSnapshot doc) {
        categories.add(Category.fromJson(doc.data));
      });
    });
  }

  @action
  void fetchProducts() {
    _api.fetchProducts(currentlySelectedCategory.uid).then(
      (QuerySnapshot query) {
        query.documents.forEach(
          (DocumentSnapshot doc) {
            // products.clear();
            products.add(Product.fromJson(doc.data));
          },
        );
      },
    );
  }
}
