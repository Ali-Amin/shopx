import 'package:flutter/material.dart';
import 'package:shoptronics/screens/product/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
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
          ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 80),
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: ImagePageView(),
              ),
              SizedBox(height: 40),
              ProductInfo(),
            ],
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
