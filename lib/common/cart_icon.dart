import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  final Color color;
  CartIcon({Key key, this.color = Colors.white}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
        ),
        Icon(
          Icons.shopping_basket,
          color: color,
        ),
      ],
    );
  }
}
