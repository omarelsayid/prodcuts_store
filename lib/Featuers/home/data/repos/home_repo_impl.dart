import 'dart:developer';

import 'package:shoes_app/Featuers/home/data/product_model/product.dart';
import 'package:shoes_app/Featuers/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(super.apiService);

  @override
  Future<List<Product>> getProducts() async {
    try {
      List data = await apiService.getProducts();

      List<Product> products = data.map((e) => Product.fromMap(e)).toList();
      return products;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
