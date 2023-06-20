import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

import '../models/product.dart';
import '../widgets/general_widget/back_button.dart';
import '../widgets/product_tile/product_detail_widget.dart';
import '../widgets/product_tile/product_tile_image.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.data});

  final Product data;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentIndex = 0;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomBackButton(),
                  ProductFavouriteWidget(
                    isFavourite: false,
                    function: () {},
                    color: Colors.black,
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBox2,
                        CarouselSlider(
                          items: data.imageUrl
                              .map(
                                (e) => Image.asset(
                                  e.toString(),
                                  fit: BoxFit.cover,
                                ),
                              )
                              .toList(),
                          options: CarouselOptions(
                            height: 35.h,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 0.9,
                            aspectRatio: 2.0,
                            initialPage: 2,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: data.imageUrl
                              .asMap()
                              .entries
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.circle_rounded,
                                    color: currentIndex == e.key
                                        ? Colors.black
                                        : Colors.grey,
                                    size: 10.sp,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        sizedBox2,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: data.rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 17.sp,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Text(
                              data.productDetails["Retail Price"],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
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
                      ],
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
}
