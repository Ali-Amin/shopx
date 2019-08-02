import 'package:flutter/material.dart';
import 'package:shoptronics/common/cart_icon.dart';
import 'package:shoptronics/common/drawer_icon.dart';
import 'package:shoptronics/screens/home/widgets/home_app_bar/search.dart';
import 'package:shoptronics/screens/home/widgets/home_app_bar/tab_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final num height;
  HomeAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height * 0.28);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
        child: DrawerIcon(),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 16.0),
          child: CartIcon(),
        ),
      ],
      bottom: BottomAppBar(height: height),
    );
  }
}

class BottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final num height;
  BottomAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Search(),
        SizedBox(height: 20),
        HomeTabBar(),
        SizedBox(height: 4),
      ],
    );
  }
}
