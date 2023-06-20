import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';

class StaticRating extends StatelessWidget {
  const StaticRating({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: data.rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 17.sp,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
