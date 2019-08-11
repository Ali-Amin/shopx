import 'package:ShopX/screens/product/store/product_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:ShopX/data_models/product.dart';

class ImagePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of(context);
    final ProductStore productStore = Provider.of(context);
    return Observer(
        name: "Product Image Page View Observer",
        builder: (_) {
          return Column(
            children: <Widget>[
              Hero(
                tag: product.uid,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: PageView(
                    onPageChanged: productStore.setPageIndex,
                    physics: BouncingScrollPhysics(),
                    children: product.photos.map((String photoUrl) {
                      return Image.network(photoUrl);
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              PageIndicator(
                page: productStore.page,
                length: product.photos.length,
              ),
            ],
          );
        });
  }
}

class PageIndicator extends StatelessWidget {
  final int page, length;

  const PageIndicator({
    Key key,
    @required this.page,
    @required this.length,
  }) : super(key: key);

  Color getColor(BuildContext context, int index) {
    if (page == index) {
      return Theme.of(context).accentColor;
    } else {
      return Theme.of(context).primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: length * 14.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: Iterable.generate(length).map((index) {
          return Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: getColor(context, index),
              boxShadow: [
                BoxShadow(
                  color: getColor(context, index),
                  blurRadius: 3,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
