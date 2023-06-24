import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../screens/check_out_screen.dart';

class TotalPriceCheckoutWidget extends StatelessWidget {
  const TotalPriceCheckoutWidget({
    super.key,
    required this.totalPrice,
    required this.bodyLarge,
  });

  final String totalPrice;
  final TextStyle? bodyLarge;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Total:"),
            Text(
              "\$$totalPrice",
              style: bodyLarge,
            ),
          ],
        ),
        FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const CheckOutScreen(),
            ),
          ),
          label: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 5.w,
            ),
            child: const Text("Checkout"),
          ),
        ),
      ],
    );
  }
}
