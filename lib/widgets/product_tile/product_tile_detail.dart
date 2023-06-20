import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';

class ProductTileDetail extends StatelessWidget {
  const ProductTileDetail({
    super.key,
    required this.data,
    required this.quantity,
  });

  final Product data;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    int totalPrice = int.parse(data.productDetails["Retail Price"]);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              data.subName,
              style: const TextStyle(
                color: Colors.black26,
              ),
            ),
            Text(
              "\$${totalPrice * quantity}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              " ${data.saleCount} sold",
              style: TextStyle(
                backgroundColor: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
