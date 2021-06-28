import 'package:flutter/foundation.dart';

class Product {
  final String name;
  final double price;
  final String imagePath;
  bool isFavourite;

  Product({
    @required this.name,
    @required this.price,
    this.imagePath = 'assets/images/image.jpg',
    this.isFavourite = false,
  });

  void toggleFavourite() {
    isFavourite = !isFavourite;
  }
}
