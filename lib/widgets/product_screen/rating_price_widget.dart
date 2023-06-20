import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';
import 'static_rating.dart';

class RatingPriceWidget extends StatelessWidget {
  const RatingPriceWidget({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StaticRating(data: data),
        Text(
          data.productDetails["Retail Price"],
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
