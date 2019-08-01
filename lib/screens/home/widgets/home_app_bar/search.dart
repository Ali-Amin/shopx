import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(60),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search for product",
                  hintStyle: TextStyle(
                    color: Colors.white.withAlpha(120),
                  ),
                  border: InputBorder.none),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.white.withAlpha(120),
          )
        ],
      ),
    );
  }
}
