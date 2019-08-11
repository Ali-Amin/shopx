import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/screens/screens.dart';
import 'package:ShopX/store/store.dart';
import 'package:ShopX/theme.dart';

void main() => runApp(Shoptronics());

class Shoptronics extends StatefulWidget {
  @override
  _ShoptronicsState createState() => _ShoptronicsState();
}

class _ShoptronicsState extends State<Shoptronics> {
  AppStore store;

  @override
  void initState() {
    store = AppStore();
    store.initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<AppStore>.value(
      value: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ShoptronicsTheme().themeData,
        home: HomeScreen(),
      ),
    );
  }
}
