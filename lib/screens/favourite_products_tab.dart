import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/empty_text.dart';
import '../widgets/products_list.dart';

class FavouriteProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Data.instance.favouriteProducts.isEmpty
        ? EmptyText(label: "You have no favourite products yet")
        : ProductsList(
            showAll: false,
          );
  }
}
