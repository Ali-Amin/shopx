import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoptronics/screens/screens.dart';
import 'package:shoptronics/data_models/product.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key key,
    @required this.child,
    @required this.width,
    @required this.height,
    @required this.color,
  }) : super(key: key);
  final Widget child;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            child,
            Align(
              alignment: Alignment.bottomRight,
              child: _ArrowIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArrowIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(40),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Icon(
        Icons.arrow_forward,
        color: Colors.white.withAlpha(200),
      ),
    );
  }
}
