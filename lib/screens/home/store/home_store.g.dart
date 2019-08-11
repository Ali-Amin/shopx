// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$HomeStore on HomeStoreBase, Store {
  final _$activeNavBarIndexAtom = Atom(name: 'HomeStoreBase.activeNavBarIndex');

  @override
  int get activeNavBarIndex {
    _$activeNavBarIndexAtom.context.enforceReadPolicy(_$activeNavBarIndexAtom);
    _$activeNavBarIndexAtom.reportObserved();
    return super.activeNavBarIndex;
  }

  @override
  set activeNavBarIndex(int value) {
    _$activeNavBarIndexAtom.context.conditionallyRunInAction(() {
      super.activeNavBarIndex = value;
      _$activeNavBarIndexAtom.reportChanged();
    }, _$activeNavBarIndexAtom, name: '${_$activeNavBarIndexAtom.name}_set');
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void changeNavBarIndex(int index) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction();
    try {
      return super.changeNavBarIndex(index);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
