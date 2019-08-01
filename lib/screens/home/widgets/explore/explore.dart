import 'package:flutter/material.dart';
import 'dart:math';

import 'package:shoptronics/data_models/product.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        ExploreProductList(),
      ],
    );
  }
}

class ExploreProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product1.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product3.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product4.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product1.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product3.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product4.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product1.png"),
    Product(
        name: "Huawei ARX 502F",
        price: "100.00\$",
        photoUrl: "assets/images/product3.png")
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) => ProductCard(
            product: products[index],
            index: index,
          ),
        ));
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({Key key, this.product, this.index}) : super(key: key);

  final Product product;
  final int index;
  final List<Color> _containerColors = [
    Color(0xFF2547F4),
    Colors.white,
    Color(0xFF644DFB)
  ];

  Color _getContainerColor() {
    if (index < _containerColors.length) {
      return _containerColors[index];
    } else {
      int newIndex = index.remainder(_containerColors.length);
      return _containerColors[newIndex];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 16),
      decoration: BoxDecoration(
        color: _getContainerColor(),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 150,
      height: 250,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 75,
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Text(
              product.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 115,
            child: Image.asset(product.photoUrl),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              product.price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white.withAlpha(200),
              ),
            ),
          )
        ],
      ),
    );
  }
}
