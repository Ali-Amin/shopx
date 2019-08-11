import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).accentColor,
            blurRadius: 20,
          )
        ],
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.white,
      ),
    );
  }
}
