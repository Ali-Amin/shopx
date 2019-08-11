import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  final Function() onPressed;
  AddToCartButton({Key key, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).accentColor,
            blurRadius: 4,
          )
        ],
      ),
      child: Material(
        color: Theme.of(context).accentColor,
        shadowColor: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.white,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 150,
            height: 80,
            alignment: Alignment.center,
            child: Text(
              "ADD TO CART",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
