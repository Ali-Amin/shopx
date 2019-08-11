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

  @observable
  ObservableList<Product> hotItems = ObservableList<Product>.of([]);

  @observable
  String searchKeyword;

  @computed
  List<Product> get filteredProducts {
    if (searchKeyword != null) {
      return ObservableList.of(
        products
            .where(
              (Product product) => product.name
                  .toLowerCase()
                  .contains(searchKeyword.toLowerCase()),
            )
            .toList(),
      );
    } else {
      return products;
    }
  }

  @observable
  Category currentlySelectedCategory;

  @action
  void initState() {
    fetchCategories().then(
      (_) {
        fetchProducts(categories.first.uid);
        currentlySelectedCategory = categories.first;
      },
    );
    fetchHotItmes();
  }

  @action
  Future<Null> fetchCategories() async {
    QuerySnapshot query = await _api.fetchCategories;
    categories = ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Category.fromJson(doc.data))
          .toList(),
    );
  }

  @action
  Future<Null> fetchProducts(String categoryUid) async {
    QuerySnapshot query = await _api.fetchProducts(categoryUid);
    products = ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Product.fromJson(doc.data))
          .toList(),
    );
  }

  @action
  Future<Null> fetchHotItmes() async {
    QuerySnapshot query = await _api.fetchHotItems();
    hotItems = ObservableList.of(
      query.documents
          .map((DocumentSnapshot doc) => Product.fromJson(doc.data))
          .toList(),
    );
  }

  @action
  void changeCategory(Category category) {
    currentlySelectedCategory = category;
    fetchProducts(category.uid);
  }

  @action
  void setSearchKeyword(String keyword) {
    searchKeyword = keyword;
  }
}
