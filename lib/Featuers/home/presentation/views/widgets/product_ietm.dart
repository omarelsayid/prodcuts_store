import 'package:flutter/material.dart';
import 'package:shoes_app/Featuers/home/data/product_model/product.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/product_info.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 390,
      // width: 250,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.blueGrey, width: 2)),
      ),
      child: Stack(
        children: [
          Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(20)),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.contain,
                  )),
              ProductInfo(
                brandName: product.brandName,
                name: product.productName,
                oldPrice: product.oldPrice,
                price: product.currentPrice,
              )
            ],
          ),
          Positioned(
            right: 8,
            bottom: 8,
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: Icon(
                color: Colors.white,
                Icons.add,
                size: 30,
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
