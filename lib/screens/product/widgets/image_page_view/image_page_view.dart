import 'package:flutter/material.dart';
import 'package:shoptronics/data_models/product.dart';

class ImagePageView extends StatefulWidget {
  final Product product;

  const ImagePageView({Key key, @required this.product}) : super(key: key);
  @override
  _ImagePageViewState createState() => _ImagePageViewState();
}

class _ImagePageViewState extends State<ImagePageView> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.product.uid,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: widget.product.photos.map((String photoUrl) {
          return Image.network(photoUrl);
        }).toList(),
      ),
    );
  }
}
