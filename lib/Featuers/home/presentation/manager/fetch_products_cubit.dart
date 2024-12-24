import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoes_app/Featuers/home/data/product_model/product.dart';
import 'package:shoes_app/Featuers/home/data/repos/home_repo.dart';

part 'fetch_products_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  FetchProductsCubit(this.homeRepo) : super(FetchProductsInitial());
  final HomeRepo homeRepo;

  Future<void> fetchProducts() async {
    emit(FetchProductsLoading());
    try {
      List<Product> products = await homeRepo.getProducts();
      emit(FetchProductsSuccess(products: products));
    } catch (e) {
      emit(FetchProductsFailed(e.toString()));
    }
  }
}
