class Product {
  String _name;
  String _price;
  String _photoUrl;
  int _backgroundColor = 0xFF2547F4;
  String _description;

  String get name => _name;
  String get price => _price;
  String get photoUrl => _photoUrl;
  int get color => _backgroundColor;
  String get description => _description;

  Product({
    String name,
    String price,
    String photoUrl,
    int color,
    String description,
  }) {
    _name = name;
    _price = price;
    _photoUrl = photoUrl;
    _backgroundColor = color;
    _description = description;
  }
}
