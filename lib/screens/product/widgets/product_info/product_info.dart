import 'dart:async';

import 'package:ShopX/screens/product/store/product_store.dart';
import 'package:flutter/material.dart';
import 'package:ShopX/screens/product/widgets/product_info/favourite_button.dart';
import 'package:ShopX/screens/product/widgets/product_info/info_card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductStore productStore = Provider.of(context);
    return Observer(builder: (_) {
      productStore.startAnimation();
      return AnimatedOpacity(
        duration: Duration(milliseconds: 400),
        curve: Curves.decelerate,
        opacity: productStore.infoCardOpacity,
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 200),
          transform: Matrix4.translationValues(
              0, productStore.infoCardVerticalPosition, 0),
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
    });
  }
}
