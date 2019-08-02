import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Stack(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white.withAlpha(60),
            ),
          ),
          Center(
            child: ClipPath(
              clipper: HorizontalClipper(),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(-500, 0);

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, (size.height / 2.0) - 0.7);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
