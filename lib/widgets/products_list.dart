import 'package:flutter/material.dart';

import '../data.dart';
import '../models/product.dart';
import 'product_widget.dart';

class ProductsList extends StatefulWidget {
  final bool showAll;

  const ProductsList({
    @required this.showAll,
  });

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  void onPressed(Product product) {
    setState(() {
      product.toggleFavourite();
    });
  }

  @override
  Widget build(BuildContext context) {
    final products = widget.showAll
        ? Data.instance.products
        : Data.instance.favouriteProducts;
    return ListView.builder(
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductWidget(
          product: product,
          onPressed: () => onPressed(product),
        );
      },
      itemCount: products.length,
    );
  }
}
