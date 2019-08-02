import 'package:flutter/material.dart';

class ImagePageView extends StatefulWidget {
  @override
  _ImagePageViewState createState() => _ImagePageViewState();
}

class _ImagePageViewState extends State<ImagePageView> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "assets/images/product1.png0",
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Image.asset("assets/images/product1.png"),
          Image.asset("assets/images/product1.png"),
          Image.asset("assets/images/product1.png"),
        ],
      ),
    );
  }
}
