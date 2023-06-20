import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../models/product.dart';
import '../../screens/product_screen.dart';
import '../general_widget/quantity_cart_widget.dart';
import 'carousel_image_widget.dart';
import 'product_detail_widget.dart';
import 'product_tile_detail.dart';
import 'product_tile_image.dart';

class ProductPreviewWidget extends StatefulWidget {
  const ProductPreviewWidget({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  State<ProductPreviewWidget> createState() => _ProductPreviewWidgetState();
}

class _ProductPreviewWidgetState extends State<ProductPreviewWidget> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: SizedBox(
          width: 100.w,
          height: 90.h,
          child: Column(
            children: [
              // Product image carousel slider
              CarouselImageWidget(
                imageUrl: widget.data.imageUrl,
              ),

              // product preview detail
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => ProductScreen(
                          data: widget.data,
                        ),
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        height: 40.h,
                        width: 85.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.sp,
                            horizontal: 10.sp,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // product first detail preview
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProductTileDetail(data: widget.data),
                                  ProductFavouriteWidget(
                                    color: Colors.black,
                                    isFavourite: false,
                                    function: () {},
                                  ),
                                ],
                              ),

                              //product second detail preview
                              Column(
                                children: widget.data.productDetails.entries
                                    .map(
                                      (entry) => ProductDetailWidget(
                                        keyString: entry.key.toString(),
                                        value: entry.value.toString(),
                                      ),
                                    )
                                    .toList(),
                              ),

                              // product add/minus quantity and add to cart widget
                              QuantityCartWidget(
                                quantity: quantity,
                                addFunction: () => addQuantity(),
                                minusFunction: () => minusQuantity(),
                                addToCart: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addQuantity() {
    setState(() {
      quantity++;
    });
  }

  void minusQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }
}
