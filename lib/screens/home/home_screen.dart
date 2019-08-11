import 'package:ShopX/screens/home/store/home_store.dart';
import 'package:flutter/material.dart';
import 'package:ShopX/screens/home/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeStore>(
      builder: (context) => HomeStore(),
      child: Scaffold(
        appBar: HomeAppBar(
          height: MediaQuery.of(context).size.height,
        ),
        bottomNavigationBar: BottomBar(),
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 64),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Explore(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: HotItems(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
