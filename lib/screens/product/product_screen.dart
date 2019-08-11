import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/screens/product/widgets/widgets.dart';
import 'package:ShopX/data_models/product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: ProductScreenAppBar(
        height: MediaQuery.of(context).size.height,
      ),
      body: Stack(
        children: <Widget>[
          BackgroundContainer(),
          Provider<Product>.value(
            value: product,
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 80),
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ImagePageView(),
                ),
                ProductInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorLight,
          ],
        ),
      ),
    );
  }
}
