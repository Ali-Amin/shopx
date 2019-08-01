import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key key, this.child, this.width, this.height, this.color})
      : super(key: key);

  final Widget child;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      width: width,
      height: height,
      child: child,
    );
  }
}
