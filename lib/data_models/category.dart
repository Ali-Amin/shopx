class Category {
  final String _name, _uid;
  String get name => _name;
  String get uid => _uid;

  Category._({String name, String uid})
      : _name = name,
        _uid = uid;
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category._(name: json['name'], uid: json['uid']);
  }
}
