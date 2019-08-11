// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$AppStore on AppStoreBase, Store {
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

  final _$hotItemsAtom = Atom(name: 'AppStoreBase.hotItems');

  @override
  ObservableList<Product> get hotItems {
    _$hotItemsAtom.context.enforceReadPolicy(_$hotItemsAtom);
    _$hotItemsAtom.reportObserved();
    return super.hotItems;
  }

  @override
  set hotItems(ObservableList<Product> value) {
    _$hotItemsAtom.context.conditionallyRunInAction(() {
      super.hotItems = value;
      _$hotItemsAtom.reportChanged();
    }, _$hotItemsAtom, name: '${_$hotItemsAtom.name}_set');
  }

  final _$isBusyAtom = Atom(name: 'AppStoreBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.context.enforceReadPolicy(_$isBusyAtom);
    _$isBusyAtom.reportObserved();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.context.conditionallyRunInAction(() {
      super.isBusy = value;
      _$isBusyAtom.reportChanged();
    }, _$isBusyAtom, name: '${_$isBusyAtom.name}_set');
  }

  final _$currentlySelectedCategoryAtom =
      Atom(name: 'AppStoreBase.currentlySelectedCategory');

  @override
  Category get currentlySelectedCategory {
    _$currentlySelectedCategoryAtom.context
        .enforceReadPolicy(_$currentlySelectedCategoryAtom);
    _$currentlySelectedCategoryAtom.reportObserved();
    return super.currentlySelectedCategory;
  }

  @override
  set currentlySelectedCategory(Category value) {
    _$currentlySelectedCategoryAtom.context.conditionallyRunInAction(() {
      super.currentlySelectedCategory = value;
      _$currentlySelectedCategoryAtom.reportChanged();
    }, _$currentlySelectedCategoryAtom,
        name: '${_$currentlySelectedCategoryAtom.name}_set');
  }

  final _$fetchCategoriesAsyncAction = AsyncAction('fetchCategories');

  @override
  Future<Null> fetchCategories() {
    return _$fetchCategoriesAsyncAction.run(() => super.fetchCategories());
  }

  final _$fetchProductsAsyncAction = AsyncAction('fetchProducts');

  @override
  Future<Null> fetchProducts(String categoryUid) {
    return _$fetchProductsAsyncAction
        .run(() => super.fetchProducts(categoryUid));
  }

  final _$fetchHotItmesAsyncAction = AsyncAction('fetchHotItmes');

  @override
  Future<Null> fetchHotItmes() {
    return _$fetchHotItmesAsyncAction.run(() => super.fetchHotItmes());
  }

  final _$AppStoreBaseActionController = ActionController(name: 'AppStoreBase');

  @override
  void initState() {
    final _$actionInfo = _$AppStoreBaseActionController.startAction();
    try {
      return super.initState();
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCategory(Category category) {
    final _$actionInfo = _$AppStoreBaseActionController.startAction();
    try {
      return super.changeCategory(category);
    } finally {
      _$AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
