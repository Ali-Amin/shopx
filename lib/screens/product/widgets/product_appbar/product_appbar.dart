import 'package:flutter/material.dart';
import 'package:ShopX/common/cart_icon.dart';
import 'package:ShopX/common/common.dart';

class ProductScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final num height;
  ProductScreenAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height * 0.1);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
        child: BackIcon(),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 16.0),
          child: CartIcon(),
        ),
      ],
    );
  }
}
