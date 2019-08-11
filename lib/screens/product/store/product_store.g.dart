// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ProductStore on ProductStoreBase, Store {
  final _$infoCardVerticalPositionAtom =
      Atom(name: 'ProductStoreBase.infoCardVerticalPosition');

  @override
  double get infoCardVerticalPosition {
    _$infoCardVerticalPositionAtom.context
        .enforceReadPolicy(_$infoCardVerticalPositionAtom);
    _$infoCardVerticalPositionAtom.reportObserved();
    return super.infoCardVerticalPosition;
  }

  @override
  set infoCardVerticalPosition(double value) {
    _$infoCardVerticalPositionAtom.context.conditionallyRunInAction(() {
      super.infoCardVerticalPosition = value;
      _$infoCardVerticalPositionAtom.reportChanged();
    }, _$infoCardVerticalPositionAtom,
        name: '${_$infoCardVerticalPositionAtom.name}_set');
  }

  final _$infoCardOpacityAtom = Atom(name: 'ProductStoreBase.infoCardOpacity');

  @override
  double get infoCardOpacity {
    _$infoCardOpacityAtom.context.enforceReadPolicy(_$infoCardOpacityAtom);
    _$infoCardOpacityAtom.reportObserved();
    return super.infoCardOpacity;
  }

  @override
  set infoCardOpacity(double value) {
    _$infoCardOpacityAtom.context.conditionallyRunInAction(() {
      super.infoCardOpacity = value;
      _$infoCardOpacityAtom.reportChanged();
    }, _$infoCardOpacityAtom, name: '${_$infoCardOpacityAtom.name}_set');
  }

  final _$pageAtom = Atom(name: 'ProductStoreBase.page');

  @override
  int get page {
    _$pageAtom.context.enforceReadPolicy(_$pageAtom);
    _$pageAtom.reportObserved();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.context.conditionallyRunInAction(() {
      super.page = value;
      _$pageAtom.reportChanged();
    }, _$pageAtom, name: '${_$pageAtom.name}_set');
  }

  final _$quantityAtom = Atom(name: 'ProductStoreBase.quantity');

  @override
  int get quantity {
    _$quantityAtom.context.enforceReadPolicy(_$quantityAtom);
    _$quantityAtom.reportObserved();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.context.conditionallyRunInAction(() {
      super.quantity = value;
      _$quantityAtom.reportChanged();
    }, _$quantityAtom, name: '${_$quantityAtom.name}_set');
  }

  final _$ProductStoreBaseActionController =
      ActionController(name: 'ProductStoreBase');

  @override
  void startAnimation() {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction();
    try {
      return super.startAnimation();
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPageIndex(int index) {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction();
    try {
      return super.setPageIndex(index);
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementQuantity() {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction();
    try {
      return super.incrementQuantity();
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementQuantity() {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction();
    try {
      return super.decrementQuantity();
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToCart() {
    final _$actionInfo = _$ProductStoreBaseActionController.startAction();
    try {
      return super.addToCart();
    } finally {
      _$ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
