import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarouselImageWidget extends StatelessWidget {
  const CarouselImageWidget({
    super.key,
    required this.imageUrl,
  });

  final List<dynamic> imageUrl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageUrl
          .map(
            (e) => Image.network(
              e.toString(),
              fit: BoxFit.fitWidth,
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 40.h,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        reverse: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
