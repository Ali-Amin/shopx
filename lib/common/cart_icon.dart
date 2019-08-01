import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  final Color color;
  CartIcon({Key key, this.color = Colors.white}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.shopping_basket,
              color: color,
            ),
          ),
          Align(
            alignment: Alignment(0.5, -0.5),
            child: CircleAvatar(
              radius: 3,
              backgroundColor: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
