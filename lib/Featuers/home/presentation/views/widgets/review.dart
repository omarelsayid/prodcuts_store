import 'package:flutter/material.dart';
import 'package:shoes_app/core/utils/app_text_style.dart';

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Text(
          'Review',
          style: AppTextStyle.myStyle,
        ),
        Text('(4.6)', style: AppTextStyle.myStyle),
        Icon(
          Icons.star,
          color: Colors.amber,
        )
      ],
    );
  }
}

