import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ShopX/screens/product/widgets/product_info/favourite_button.dart';
import 'package:ShopX/screens/product/widgets/product_info/info_card.dart';

class ProductInfo extends StatefulWidget {
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  double y;
  double opacity;
  Timer delay;

  @override
  void initState() {
    y = 250;
    opacity = 0.1;
    delay = Timer(
      Duration(milliseconds: 50),
      () => setState(() {
        y = 0;
        opacity = 1;
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    delay.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 400),
      curve: Curves.decelerate,
      opacity: opacity,
      child: AnimatedContainer(
        curve: Curves.decelerate,
        duration: Duration(milliseconds: 200),
        transform: Matrix4.translationValues(0, y, 0),
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
      ),
    );
  }
}
