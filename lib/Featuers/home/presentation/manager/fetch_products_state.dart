// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'fetch_products_cubit.dart';

@immutable
abstract class FetchProductsState {}

class FetchProductsInitial extends FetchProductsState {}

class FetchProductsLoading extends FetchProductsState {}

class FetchProductsSuccess extends FetchProductsState {
  List<Product> products;
  FetchProductsSuccess({
    required this.products,
  });
}

class FetchProductsFailed extends FetchProductsState {
  final String message;

  FetchProductsFailed(this.message);
}
