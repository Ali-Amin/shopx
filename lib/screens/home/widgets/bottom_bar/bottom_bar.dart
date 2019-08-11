import 'package:ShopX/screens/home/store/home_store.dart';
import 'package:flutter/material.dart';
import 'package:ShopX/common/common.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  Color _cartColor(BuildContext context, int index) {
    HomeStore homeStore = Provider.of(context);
    if (homeStore.activeNavBarIndex == index) {
      return Theme.of(context).accentColor;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = Provider.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
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
            currentIndex: homeStore.activeNavBarIndex,
            onTap: (int index) => homeStore.changeNavBarIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: CartIcon(
                  color: _cartColor(context, 1), //to check if it is selected
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
