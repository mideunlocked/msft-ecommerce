import 'package:flutter/material.dart';

import '../product_tile/preview_add_cart_widget.dart';
import '../product_tile/quantity_widget.dart';

class QuantityCartWidget extends StatelessWidget {
  const QuantityCartWidget({
    super.key,
    required this.quantity,
    required this.addFunction,
    required this.minusFunction,
    required this.addToCart,
  });

  final int quantity;
  final Function addFunction;
  final Function minusFunction;
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        PreviewAddCartWidget(
          function: () {
            addToCart();
          },
        ),
      ],
    );
  }
}
