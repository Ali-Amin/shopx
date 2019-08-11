import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/data_models/product.dart';
import 'package:ShopX/screens/home/widgets/hot_items/hot_product_card.dart';
import 'package:ShopX/store/store.dart';

class HotItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text(
            "Today's Hot",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        HotProductList(),
      ],
    );
  }
}

class HotProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppStore store = Provider.of(context);
    return Observer(
      builder: (_) => SizedBox(
          height: 175,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 32.0),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: store.hotItems.length,
            itemBuilder: (context, index) => Provider<Product>.value(
              value: store.hotItems[index],
              child: HotProductCard(),
            ),
          )),
    );
  }
}
