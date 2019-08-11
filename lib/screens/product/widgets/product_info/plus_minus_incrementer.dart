import 'package:ShopX/screens/product/store/product_store.dart';
import 'package:flutter/material.dart';
import 'package:ShopX/screens/product/widgets/product_info/add_to_cart_button.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class PlusMinusIncrementer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductStore productsStore = Provider.of(context);
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
          child: Observer(
            name: "Plus Minus Incrementer Observer",
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Gesture detector used instead of IconButton to avoid unnecessary padding
                GestureDetector(
                  onTap: productsStore.decrementQuantity,
                  child: Icon(
                    Icons.remove,
                    color: Colors.grey[400],
                    size: 18,
                  ),
                ),
                Text(
                  "${productsStore.quantity}",
                  style: TextStyle(
                      color: Color(0xFF4209B7), fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: productsStore.incrementQuantity,
                  child: Icon(
                    Icons.add,
                    color: Colors.grey[400],
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        AddToCartButton(
          onPressed: productsStore.addToCart,
        ),
      ],
    );
  }
}
