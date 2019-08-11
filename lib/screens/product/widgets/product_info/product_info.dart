import 'package:flutter/material.dart';
import 'package:shoptronics/data_models/product.dart';
import 'package:shoptronics/screens/product/widgets/product_info/favourite_button.dart';
import 'package:shoptronics/screens/product/widgets/product_info/info_card.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: InfoCard(),
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
