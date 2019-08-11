import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseAPI {
  Firestore _fs = Firestore.instance;

  Future<QuerySnapshot> fetchProducts(String categoryUid) {
    return _fs
        .collection('products')
        .where('category', isEqualTo: categoryUid)
        .getDocuments();
  }

  Future<QuerySnapshot> fetchHotItems() {
    return _fs
        .collection('products')
        .where('isHot', isEqualTo: true)
        .getDocuments();
  }

  Future<QuerySnapshot> get fetchCategories {
    return _fs.collection('categories').getDocuments();
  }
}
