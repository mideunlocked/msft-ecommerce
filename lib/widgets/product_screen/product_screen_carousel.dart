import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ProductScreenCarousel extends StatefulWidget {
  ProductScreenCarousel({
    super.key,
    required this.imageUrl,
    this.currentIndex = 0,
  });

  int currentIndex;
  final List<dynamic> imageUrl;

  @override
  State<ProductScreenCarousel> createState() => _ProductScreenCarouselState();
}

class _ProductScreenCarouselState extends State<ProductScreenCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.imageUrl
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
                widget.currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageUrl
              .asMap()
              .entries
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle_rounded,
                    color: widget.currentIndex == e.key
                        ? Colors.black
                        : Colors.grey,
                    size: 10.sp,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
