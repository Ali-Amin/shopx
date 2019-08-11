import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/data_models/product.dart';
import 'package:ShopX/screens/product/widgets/product_info/plus_minus_incrementer.dart';
import 'package:ShopX/screens/product/widgets/product_info/rating.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of(context);
    return Container(
      height: 380,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Text(
                product.name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4209B7),
                ),
              ),
            ),
            SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: Text(
                "\$" + product.price.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withAlpha(150),
                ),
              ),
            ),
            SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: Rating(rating: 3.5),
            ),
            SizedBox(height: 20),
            Flexible(
              flex: 5,
              child: Text(
                product.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Color(0xFF241D8C),
                  height: 2,
                ),
              ),
            ),
            SizedBox(height: 30),
            Flexible(
              flex: 2,
              child: PlusMinusIncrementer(),
            ),
          ],
        ),
      ),
    );
  }
}
