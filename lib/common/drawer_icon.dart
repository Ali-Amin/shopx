import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).cardColor,
      foregroundColor: Colors.white,
      child: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}
