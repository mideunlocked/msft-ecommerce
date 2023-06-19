import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../models/product.dart';
import '../widgets/general_widget/back_button.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.sp),
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
              Column(
                children: [
                  CarouselSlider(
                    items: widget.data.imageUrl
                        .map(
                          (e) => Image.asset(
                            e.toString(),
                            fit: BoxFit.cover,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
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
                    children: widget.data.imageUrl
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
