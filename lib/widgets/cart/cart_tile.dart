import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.product,
    required this.quantity,
    required this.totalPrice,
  });

  final Product product;
  final String quantity;
  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.imageUrl[0],
                height: 10.h,
                width: 20.w,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  product.subName,
                  style: const TextStyle(
                    color: Colors.black26,
                  ),
                ),
                Text(
                  "$quantity x ${product.productDetails["Retail Price"]}",
                  style: textTheme.bodyLarge?.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.delete_rounded,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "\$$totalPrice",
                  style: textTheme.bodyLarge?.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
