import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/Featuers/home/presentation/manager/fetch_products_cubit.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/products_grid_View.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetchProductsCubit>(context).fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProductsCubit, FetchProductsState>(builder: (context, state) {
      if (state is FetchProductsLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is FetchProductsSuccess) {
        return ProductsGridView(
          product: state.products,
        );
      } else if (state is FetchProductsFailed) {
        return Center(
          child: Text(state.message),
        );
      } else {
        return Container();
      }
    });
  }
}
