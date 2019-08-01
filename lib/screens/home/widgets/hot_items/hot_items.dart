import 'package:flutter/material.dart';
import 'package:shoptronics/data_models/product.dart';
import 'package:shoptronics/screens/home/widgets/hot_items/hot_product_card.dart';

class HotItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Today's Hot",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        HotProductList(),
      ],
    );
  }
}

class HotProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product3.png",
      color: 0xFFA26FFF,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product1.png",
      color: 0xFF4769F4,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product2.png",
      color: 0xFFFFFFFF,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product3.png",
      color: 0xFFA26FFF,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product1.png",
      color: 0xFF4769F4,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product2.png",
      color: 0xFFFFFFFF,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product1.png",
      color: 0xFF4769F4,
    ),
    Product(
      name: "Huawei ARX 502F",
      price: "100.00\$",
      photoUrl: "assets/images/product2.png",
      color: 0xFFFFFFFF,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 175,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) => HotProductCard(
            product: products[index],
          ),
        ));
  }
}
