import 'package:flutter/material.dart';
import 'package:ShopX/common/common.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  Color _cartColor(int index) {
    if (_currentIndex == index) {
      return Theme.of(context).accentColor;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: Container(
        height: 72,
        child: Center(
          child: BottomNavigationBar(
            selectedItemColor: Theme.of(context).accentColor,
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 1,
            selectedFontSize: 1,
            currentIndex: _currentIndex,
            onTap: (int index) => setState(() => _currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: CartIcon(
                  color: _cartColor(1), //to check if it is selected
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
