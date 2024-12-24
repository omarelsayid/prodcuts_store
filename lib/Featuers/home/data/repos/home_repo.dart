import 'package:shoes_app/Featuers/home/data/product_model/product.dart';
import 'package:shoes_app/core/service/api_service.dart';

abstract class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);

  Future<List<Product>> getProducts(); // Marked as abstract
}
