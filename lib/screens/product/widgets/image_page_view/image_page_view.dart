import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/data_models/product.dart';

class ImagePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of(context);
    return Hero(
      tag: product.uid,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: product.photos.map((String photoUrl) {
          return Image.network(photoUrl);
        }).toList(),
      ),
    );
  }
}
