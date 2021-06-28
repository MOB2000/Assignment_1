import 'package:assignment_1/models/product.dart';

class Data {
  List<Product> products;
  static Data _instance;

  Data._() {
    products = List.generate(
      5,
      (index) => Product(
        name: 'product ${index + 1}',
        price: (index + 1) * 100.0,
      ),
    ).toList();
  }

  static Data get instance {
    if (_instance == null) {
      _instance = new Data._();
    }
    return _instance;
  }

  List<Product> get favouriteProducts {
    return products.where((product) => product.isFavourite).toList();
  }
}
