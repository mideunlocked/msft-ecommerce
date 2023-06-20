import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../product_tile/preview_add_cart_widget.dart';

class PriceCartWidget extends StatelessWidget {
  const PriceCartWidget({
    super.key,
    required this.addToCart,
    required this.totalPrice,
    required this.quantity,
  });

  final int totalPrice;
  final int quantity;
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.w),
          child: Text(
            "\$${totalPrice * quantity}",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25.sp,
              fontStyle: FontStyle.italic,
            ),
          ),
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
