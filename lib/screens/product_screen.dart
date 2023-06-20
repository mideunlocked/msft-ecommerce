import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/product.dart';
import '../widgets/general_widget/quantity_cart_widget.dart';
import '../widgets/product_screen/product_app_bar.dart';
import '../widgets/product_screen/product_screen_carousel.dart';
import '../widgets/product_screen/rating_price_widget.dart';
import '../widgets/product_tile/product_detail_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.data});

  final Product data;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentIndex = 0;
  String? initial;

  int quantity = 1;

  @override
  void initState() {
    super.initState();

    initial = widget.data.sizes.first.toString();
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.data;
    var titleStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
    );
    var sizedBox2 = SizedBox(
      height: 2.h,
    );
    var sizedBox1 = SizedBox(
      height: 1.h,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: Column(
            children: [
              // custom app bar
              const ProductAppBar(),

              // product screen details
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBox2,
                        ProductScreenCarousel(
                          imageUrl: data.imageUrl,
                          currentIndex: currentIndex,
                        ),
                        sizedBox2,
                        RatingPriceWidget(data: data),
                        sizedBox2,
                        Text(
                          data.name,
                          style: titleStyle.copyWith(fontSize: 18.sp),
                        ),
                        Text(
                          data.subName,
                          style: titleStyle.copyWith(
                            fontSize: 12.sp,
                            color: Colors.black38,
                          ),
                        ),
                        Text(
                          " ${data.saleCount} sold",
                          style: TextStyle(
                            backgroundColor: Colors.grey[300],
                          ),
                        ),
                        sizedBox2,
                        Text(
                          "Product Details",
                          style: titleStyle,
                        ),
                        sizedBox1,
                        Column(
                          children: data.productDetails.entries
                              .map(
                                (entry) => ProductDetailWidget(
                                  keyString: entry.key.toString(),
                                  value: entry.value.toString(),
                                ),
                              )
                              .toList(),
                        ),
                        sizedBox2,
                        Text(
                          "Product Description",
                          style: titleStyle,
                        ),
                        sizedBox1,
                        Text(data.description ?? ""),
                        sizedBox2,
                        Text(
                          "Size",
                          style: titleStyle,
                        ),
                        sizedBox1,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                          child: DropdownButton(
                            value: initial,
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(10),
                            icon: const Icon(Icons.arrow_drop_down_rounded),
                            underline: const SizedBox(),
                            items: data.sizes
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.toString(),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                initial = value.toString();
                              });
                            },
                          ),
                        ),
                        sizedBox2,
                      ],
                    ),
                  ),
                ),
              ),

              // quantity selector and add to cart button widget
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
