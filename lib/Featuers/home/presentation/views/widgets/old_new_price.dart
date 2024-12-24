import 'package:flutter/material.dart';
import 'package:shoes_app/core/utils/app_text_style.dart';

class OldAndNewPrice extends StatelessWidget {
  const OldAndNewPrice({
    super.key, required this.price, required this.oldPrice,
  });
  final int price;
  final int oldPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Text(
          '$price EGP',
          style: AppTextStyle.myStyle,
        ),
        Text(
          '$oldPrice EGP',
          style: TextStyle(
              height: 1.5,
              decoration: TextDecoration.lineThrough,
              color: Colors.lightBlueAccent[700],
              fontSize: 18,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
