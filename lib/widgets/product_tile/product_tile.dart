import 'package:flutter/material.dart';
import 'package:msft/screens/product_screen.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';
import 'product_preview_dialog.dart';
import 'product_tile_detail.dart';
import 'product_tile_image.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => ProductScreen(
            data: data,
          ),
        ),
      ),
      onLongPress: () => showProductEnlargeedPreview(context),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            // Product initial image
            ProuctTileImage(
              imageUrl: data.imageUrl[0],
            ),
            // product preview data
            ProductTileDetail(data: data),
            // a little spacing on the bottom to balance the widget alignment
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    );
  }

  void showProductEnlargeedPreview(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => ProductPreviewWidget(
        data: data,
      ),
    );
  }
}
