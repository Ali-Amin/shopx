import 'package:flutter/material.dart';
import 'package:shoptronics/common/product_card.dart';
import 'package:shoptronics/data_models/product.dart';

class ExploreProductCard extends StatelessWidget {
  ExploreProductCard({Key key, this.product}) : super(key: key);

  final Product product;
  Color textColor() {
    switch (product.color) {
      case 0xFF4769F4:
      case 0xFFA26FFF:
        return Colors.white;
        break;
      case 0xFFFFFFFF:
        return Color(0xFFA26FFF);
        break;
      default:
        return Colors.white;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      width: 150,
      height: 250,
      color: Color(product.color),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 65,
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Text(
              product.name,
              style: TextStyle(
                color: textColor(),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 115,
            alignment: Alignment.topCenter,
            child: Image.asset(
              product.photoUrl,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 12),
            height: 30,
            child: Text(
              product.price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: textColor().withAlpha(200),
              ),
            ),
          )
        ],
      ),
    );
  }
}
