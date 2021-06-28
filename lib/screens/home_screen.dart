import 'package:flutter/material.dart';

import 'all_products_tab.dart';
import 'favourite_products_tab.dart';

class HomeScreen extends StatelessWidget {
  final int numTabs = 2;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: numTabs,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Favourites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllProductsTab(),
            FavouriteProductsScreen(),
          ],
        ),
      ),
    );
  }
}
