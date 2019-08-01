import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Stack(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white.withAlpha(60),
            ),
          ),
          Center(
            child: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
