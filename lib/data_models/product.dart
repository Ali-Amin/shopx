class Product {
  String _name;
  String _price;
  String _photoUrl;

  String get name => _name;
  String get price => _price;
  String get photoUrl => _photoUrl;

  Product({String name, String price, String photoUrl}) {
    _name = name;
    _price = price;
    _photoUrl = photoUrl;
  }
}
