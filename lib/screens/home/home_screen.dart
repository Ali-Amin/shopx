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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 24.0),
            child: Explore(),
          ), // Explore(),
          // TodaysHot(),
        ],
      ),
    );
  }
}
