import 'package:get/get.dart';
import 'package:getx_shopping/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );

    var productResult = [
      Product(
        id: 1,
        productName: 'ABC',
        productImage: 'IMAGE',
        productDescription: 'DESCRIPTION',
        price: 30,
      ),
      Product(
        id: 2,
        productName: 'ABC',
        productImage: 'IMAGE',
        productDescription: 'DESCRIPTION',
        price: 40,
      ),
      Product(
        id: 3,
        productName: 'ABC',
        productImage: 'IMAGE',
        productDescription: 'DESCRIPTION',
        price: 50,
      ),
      Product(
        id: 4,
        productName: 'ABC',
        productImage: 'IMAGE',
        productDescription: 'DESCRIPTION',
        price: 60,
      ),
    ];

    products.value = productResult;
  }
}
