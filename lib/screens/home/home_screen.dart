import 'package:flutter/material.dart';
import 'package:shoptronics/screens/home/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        height: MediaQuery.of(context).size.height,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
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
    );
  }
}
