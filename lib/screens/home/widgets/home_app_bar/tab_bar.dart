import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> with TickerProviderStateMixin {
  TabController tabController;
  List<String> products = ['Apple', 'Xiaomi', 'Huawei', 'Rapoo'];
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor, //to remove splash effect
      child: TabBar(
          controller: tabController,
          labelColor: Theme.of(context).accentColor,
          indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
          indicatorWeight: 0.1,
          onTap: (int index) => setState(() {}),
          tabs: products.map((String product) {
            bool isSelected = _isTabSelected(product);
            return ProductTab(
              text: product,
              isSelected: isSelected,
            );
          }).toList()),
    );
  }

  bool _isTabSelected(String product) {
    return tabController.index == products.indexOf(product);
  }
}

class ProductTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  ProductTab({this.text, this.isSelected});

  Color textColor(BuildContext context) {
    if (isSelected) {
      return Theme.of(context).accentColor;
    } else {
      return Colors.white.withAlpha(230);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: textColor(context),
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 8),
        Visibility(
          visible: isSelected,
          child: TabIndicator(),
        )
      ],
    );
  }
}

class TabIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6,
      child: FlareActor(
        'assets/animations/AnimatedTabBarIndicator.flr',
        animation: 'Untitled',
        fit: BoxFit.contain,
      ),
    );
  }
}
