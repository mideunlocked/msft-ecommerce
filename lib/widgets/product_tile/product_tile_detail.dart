import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';

class ProductTileDetail extends StatelessWidget {
  const ProductTileDetail({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
            data.productDetails["Retail Price"],
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
    );
  }
}
