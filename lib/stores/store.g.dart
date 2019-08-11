// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$AppStore on AppStoreBase, Store {
  Computed<Category> _$currentlySelectedCategoryComputed;

  @override
  Category get currentlySelectedCategory =>
      (_$currentlySelectedCategoryComputed ??=
              Computed<Category>(() => super.currentlySelectedCategory))
          .value;

  final _$categoriesAtom = Atom(name: 'AppStoreBase.categories');

  @override
  ObservableList<Category> get categories {
    _$categoriesAtom.context.enforceReadPolicy(_$categoriesAtom);
    _$categoriesAtom.reportObserved();
    return super.categories;
  }

  @override
  set categories(ObservableList<Category> value) {
    _$categoriesAtom.context.conditionallyRunInAction(() {
      super.categories = value;
      _$categoriesAtom.reportChanged();
    }, _$categoriesAtom, name: '${_$categoriesAtom.name}_set');
  }

  final _$productsAtom = Atom(name: 'AppStoreBase.products');

  @override
  ObservableList<Product> get products {
    _$productsAtom.context.enforceReadPolicy(_$productsAtom);
    _$productsAtom.reportObserved();
    return super.products;
  }

  @override
  set products(ObservableList<Product> value) {
    _$productsAtom.context.conditionallyRunInAction(() {
      super.products = value;
      _$productsAtom.reportChanged();
    }, _$productsAtom, name: '${_$productsAtom.name}_set');
  }

  final _$AppStoreBaseActionController = ActionController(name: 'AppStoreBase');

  @override
  void fetchCategories() {
    final _$actionInfo = _$AppStoreBaseActionController.startAction();
    try {
      return super.fetchCategories();
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchProducts() {
    final _$actionInfo = _$AppStoreBaseActionController.startAction();
    try {
      return super.fetchProducts();
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
