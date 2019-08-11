class Product {
  final String _name, _description, _uid, _category;
  final List<String> _photos;
  final int _backgroundColor;
  final num _price;
  final bool _isHot;

  String get name => _name;
  String get uid => _uid;
  String get category => _category;
  List<String> get photos => _photos;
  num get price => _price;
  int get backgroundColor => _backgroundColor;
  String get description => _description;
  bool get isHot => _isHot;

  Product._({
    String uid,
    String name,
    String description,
    String category,
    num price,
    List<String> photos,
    int backgroundColor,
    bool isHot,
  })  : _uid = uid,
        _name = name,
        _description = description,
        _category = category,
        _price = price,
        _photos = photos,
        _backgroundColor = backgroundColor,
        _isHot = isHot;

  factory Product.fromJson(Map<String, dynamic> json) {
    List<String> photos = List.castFrom<dynamic, String>(json['photos']);
    int backgroundColor = int.tryParse(json['backgroundColor']);
    return Product._(
      uid: json['uid'],
      name: json['name'],
      price: json['price'],
      category: json['category'],
      backgroundColor: backgroundColor,
      photos: photos,
    );
  }
}
