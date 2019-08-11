import 'package:flutter/material.dart';
import 'package:ShopX/screens/home/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
