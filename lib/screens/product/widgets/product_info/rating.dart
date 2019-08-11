import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  Rating({Key key, this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            EmptyRating(),
            ClipPath(
              clipper: RatingClipper(rating: rating),
              child: FullRating(),
            ),
          ],
        ),
        SizedBox(width: 8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: rating.toString(),
                style: TextStyle(
                  color: Color(0xFF4209B7),
                  fontSize: 17,
                ),
              ),
              TextSpan(
                text: "/5",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FullRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Row(
        children: <Widget>[
          Icon(Icons.star, color: Theme.of(context).primaryColorLight),
          Icon(Icons.star, color: Theme.of(context).primaryColorLight),
          Icon(Icons.star, color: Theme.of(context).primaryColorLight),
          Icon(Icons.star, color: Theme.of(context).primaryColorLight),
          Icon(Icons.star, color: Theme.of(context).primaryColorLight),
        ],
      ),
    );
  }
}

class RatingClipper extends CustomClipper<Path> {
  RatingClipper({this.rating});
  double rating;
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo((rating / 5) * size.width, size.height);
    path.lineTo((rating / 5) * size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class EmptyRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Row(
        children: <Widget>[
          Icon(Icons.star, color: Colors.grey),
          Icon(Icons.star, color: Colors.grey),
          Icon(Icons.star, color: Colors.grey),
          Icon(Icons.star, color: Colors.grey),
          Icon(Icons.star, color: Colors.grey),
        ],
      ),
    );
  }
}
