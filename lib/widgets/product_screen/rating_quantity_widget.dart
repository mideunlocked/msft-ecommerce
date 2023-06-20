import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../product_tile/quantity_widget.dart';
import 'static_rating.dart';

class RatingQuantityWidget extends StatelessWidget {
  const RatingQuantityWidget({
    super.key,
    required this.data,
    required this.quantity,
    required this.addFunction,
    required this.minusFunction,
  });

  final Product data;
  final int quantity;
  final Function addFunction;
  final Function minusFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuantityWidget(
          quantity: quantity,
          addFunction: () {
            addFunction();
          },
          minusFunction: () {
            minusFunction();
          },
        ),
        StaticRating(data: data),
      ],
    );
  }
}
