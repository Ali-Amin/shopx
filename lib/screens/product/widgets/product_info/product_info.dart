import 'package:flutter/material.dart';
import 'package:shoptronics/data_models/product.dart';
import 'package:shoptronics/screens/product/widgets/product_info/favourite_button.dart';
import 'package:shoptronics/screens/product/widgets/product_info/info_card.dart';

class ProductInfo extends StatelessWidget {
  final Product product = Product(
    name: "Huawei ARX 502F",
    price: "100.00\$",
    photoUrl: "assets/images/product1.png",
    description:
        "Premium Earphones/Headphones/Headsets to 3.5mm with Stereo Mix & Remote Noise Isolating Control Headphone.",
    color: 0xFF4769F4,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: InfoCard(product: product),
          ),
          Align(
            alignment: Alignment(0.7, -1),
            child: FavouriteButton(),
          ),
        ],
      ),
    );
  }
}
