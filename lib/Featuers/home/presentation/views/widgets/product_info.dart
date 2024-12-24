import 'package:flutter/material.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/old_new_price.dart';
import 'package:shoes_app/Featuers/home/presentation/views/widgets/review.dart';
import 'package:shoes_app/core/utils/app_text_style.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.name,
    required this.brandName,
    required this.price,
    required this.oldPrice,
  });
  final String name;
  final String brandName;
  final int price;
  final int oldPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            brandName,
            style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.myStyle,
          ),
          OldAndNewPrice(
            oldPrice: oldPrice,
            price: price,
          ),
          SizedBox(
            height: 5,
          ),
          Review(),
        ],
      ),
    );
  }
}
