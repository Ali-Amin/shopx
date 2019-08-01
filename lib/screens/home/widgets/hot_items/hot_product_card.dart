import 'package:flutter/material.dart';
import 'package:shoptronics/common/product_card.dart';
import 'package:shoptronics/data_models/product.dart';

class HotProductCard extends StatelessWidget {
  HotProductCard({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductCard(
      width: 240,
      height: 175,
      color: Color(product.color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(width: 80, child: HotProductInfo(product: product)),
          Container(
            width: 160,
            height: 140,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              product.photoUrl,
            ),
          ),
        ],
      ),
    );
  }
}

class HotProductInfo extends StatelessWidget {
  HotProductInfo({Key key, this.product}) : super(key: key);

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 8, left: 12),
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
    );
  }
}
