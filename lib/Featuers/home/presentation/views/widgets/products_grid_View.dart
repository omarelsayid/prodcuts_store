import 'package:flutter/material.dart';
import 'package:shoes_app/Featuers/home/data/product_model/product.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/product_ietm.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.product,
  });
  final List<Product> product;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 225 / 400),
      itemBuilder: (context, index) {
        return ProductItem(
          product: product[index],
        );
      },
    );
  }
}
