import 'package:flutter/material.dart';
import 'package:shoptronics/screens/screens.dart';
import 'package:shoptronics/theme.dart';

void main() => runApp(Shoptronics());

class Shoptronics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ShoptronicsTheme().themeData,
      home: HomeScreen(),
    );
  }
}
