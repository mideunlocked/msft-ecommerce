import 'package:flutter/material.dart';
import 'package:msft/data/category_data.dart';
import 'package:sizer/sizer.dart';

import '../data/product_data.dart';
import '../widgets/product_tile/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleSubtitleWidget(
                  title: "Categories",
                  subtitle:
                      "Explore our wide range of categories and discover something new.",
                ),
                SizedBox(
                  height: 18.h,
                  width: 100.w,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: categories
                            .map(
                              (e) => CategoryTile(
                                title: e.categoryName,
                                imageUrl: e.categoryImageUrl ?? "",
                              ),
                            )
                            .toList()),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const TitleSubtitleWidget(
                  title: "Trending 🔥",
                  subtitle:
                      "Trending products are a curated collections of our best selling items",
                ),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.sp,
                    crossAxisSpacing: 8.sp,
                    mainAxisExtent: 45.h,
                  ),
                  children: products
                      .map(
                        (data) => ProductTile(data: data),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSubtitleWidget extends StatelessWidget {
  const TitleSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.w,
        right: 20.w,
        bottom: 1.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20.sp,
                ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 8.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 1.w,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 15.h,
              width: 30.w,
            ),
          ),
          Container(
            height: 15.h,
            width: 30.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
