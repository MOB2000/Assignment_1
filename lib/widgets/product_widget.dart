import 'package:assignment_1/models/product.dart';
import 'package:flutter/material.dart';

typedef ToggleOnPress = void Function();

class ProductWidget extends StatelessWidget {
  final Product product;
  final ToggleOnPress onPressed;

  ProductWidget({
    @required this.product,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(product.imagePath),
      ),
      title: Text(product.name),
      subtitle: Text('${product.price.toString()}\$'),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.favorite,
          color: product.isFavourite ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
