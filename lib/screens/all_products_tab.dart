import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/empty_text.dart';
import '../widgets/products_list.dart';

class AllProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Data.instance.products.isEmpty
        ? EmptyText(label: "There is no products to show")
        : ProductsList(
            showAll: true,
          );
  }
}
