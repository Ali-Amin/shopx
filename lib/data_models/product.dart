class Product {
  final String _name, _description, _uid;
  final List<String> _photos;
  final int _backgroundColor;
  final num _price;

  String get name => _name;
  List<String> get photos => _photos;
  num get price => _price;
  int get backgroundColor => _backgroundColor;
  String get description => _description;

  Product._({
    String uid,
    String name,
    num price,
    List<String> photos,
    int backgroundColor,
    String description,
  })  : _uid = uid,
        _name = name,
        _price = price,
        _photos = photos,
        _backgroundColor = backgroundColor,
        _description = description;

  factory Product.fromJson(Map<String, dynamic> json) {
    List<String> photos = List.castFrom<dynamic, String>(json['photos']);
    int backgroundColor = int.tryParse(json['backgroundColor']);
    return Product._(
      uid: json['uid'],
      name: json['name'],
      price: json['price'],
      backgroundColor: backgroundColor,
      photos: photos,
    );
  }
}
