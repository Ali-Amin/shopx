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
        children: <Widget>[
          // Explore(),
          // TodaysHot(),
        ],
      ),
    );
  }
}
