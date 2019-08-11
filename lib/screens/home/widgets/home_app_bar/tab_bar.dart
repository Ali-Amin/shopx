import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:shoptronics/data_models/category.dart';
import 'package:shoptronics/stores/store.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppStore store = Provider.of(context);
    return Container(
      color: Theme.of(context).primaryColor, //to remove splash effect
      child: Observer(
        builder: (_) {
          tabController =
              TabController(length: store.categories.length, vsync: this);

          return TabBar(
              controller: tabController,
              labelColor: Theme.of(context).accentColor,
              indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
              indicatorWeight: 0.1,
              onTap: (int index) {
                store.changeCategory(store.categories[index]);
              },
              tabs: store.categories.map((Category category) {
                bool isSelected = store.currentlySelectedCategory == category;
                return ProductTab(
                  text: category.name.toUpperCase(),
                  isSelected: isSelected,
                );
              }).toList());
        },
      ),
    );
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
