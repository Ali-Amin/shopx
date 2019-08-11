import 'package:flutter/material.dart';
import 'package:ShopX/screens/product/widgets/product_info/add_to_cart_button.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Gesture detector used instead of IconButton to avoid unnecessary padding
              GestureDetector(
                onTap: () {
                  if (qty != 0) {
                    setState(() => qty--);
                  }
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.grey[400],
                  size: 18,
                ),
              ),
              Text(
                "$qty",
                style: TextStyle(
                    color: Color(0xFF4209B7), fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                onTap: () {
                  setState(() => qty++);
                },
                child: Icon(
                  Icons.add,
                  color: Colors.grey[400],
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        AddToCartButton(
          onPressed: () {
            setState(() => qty = 0);
          },
        ),
      ],
    );
  }
}
