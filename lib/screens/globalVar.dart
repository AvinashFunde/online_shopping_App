import 'homepage.dart';

class GlobalVariable {
  // Singleton instance
  static final GlobalVariable _instance = GlobalVariable._internal();

  // Private constructor
  GlobalVariable._internal();

  factory GlobalVariable() => _instance;

  List<ProductModel> productList = [];

  List<ProductModel> cartList = [];


  addProduct(ProductModel product) {
    productList.add(product);
  }


  addToCart(ProductModel product) {
    cartList.add(product);
  }



// Other methods or functionalities can be added as needed
}
