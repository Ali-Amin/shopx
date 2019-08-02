import 'package:flutter/material.dart';
import 'package:shoptronics/data_models/product.dart';

class ProductInfo extends StatelessWidget {
  final Product product = Product(
    name: "Huawei ARX 502F",
    price: "100.00\$",
    photoUrl: "assets/images/product1.png",
    description:
        "Premium Earphones/Headphones/Headsets to 3.5mm with Stereo Mix & Remote Noise Isolating Control Headphone.",
    color: 0xFF4769F4,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: InfoCard(product: product),
          ),
          Align(
            alignment: Alignment(0.7, -1),
            child: FavouriteButton(),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final Product product;
  InfoCard({this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Text(
                product.name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4209B7),
                ),
              ),
            ),
            SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: Text(
                product.price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withAlpha(150),
                ),
              ),
            ),
            SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: Rating(rating: 3.5),
            ),
            SizedBox(height: 20),
            Flexible(
              flex: 5,
              child: Text(
                product.description,
                style: TextStyle(
                  color: Color(0xFF241D8C),
                  height: 2,
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: PlusMinusIncrementer(),
            ),
          ],
        ),
      ),
    );
  }
}

class FavouriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).accentColor,
            blurRadius: 20,
          )
        ],
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.white,
      ),
    );
  }
}

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

class PlusMinusIncrementer extends StatefulWidget {
  @override
  _PlusMinusIncrementerState createState() => _PlusMinusIncrementerState();
}

class _PlusMinusIncrementerState extends State<PlusMinusIncrementer> {
  int qty;
  @override
  void initState() {
    qty = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.remove,
            color: Colors.grey[400],
          ),
          Text(
            "$qty",
            style: TextStyle(
                color: Color(0xFF4209B7), fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.add,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
