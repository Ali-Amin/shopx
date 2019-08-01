import 'package:flutter/material.dart';

class Product {
  String _name;
  String _price;
  String _photoUrl;
  int _backgroundColor = 0xFF2547F4;

  String get name => _name;
  String get price => _price;
  String get photoUrl => _photoUrl;
  int get color => _backgroundColor;

  Product({String name, String price, String photoUrl, int color}) {
    _name = name;
    _price = price;
    _photoUrl = photoUrl;
    _backgroundColor = color;
  }
}
