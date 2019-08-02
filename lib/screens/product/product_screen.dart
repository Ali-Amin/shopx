import 'package:flutter/material.dart';
import 'package:shoptronics/screens/product/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductScreenAppBar(
        height: MediaQuery.of(context).size.height,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          // ImagePageView(),
          // ProductInfo(),
        ],
      ),
    );
  }
}
