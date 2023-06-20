import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/category_data.dart';
import '../../data/product_data.dart';
import '../../widgets/product_tile/product_tile.dart';
import '../../widgets/shop_widget.dart/category_tile.dart';
import '../../widgets/shop_widget.dart/shop_banner.dart';
import '../../widgets/shop_widget.dart/title_subtitle_widget.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var sizedBox = SizedBox(
      height: 1.h,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/app/black_logo.png",
                    fit: BoxFit.cover,
                    height: 5.h,
                    width: 30.w,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBox,
                      MSFTBanner(textTheme: textTheme),
                      sizedBox,
                      sizedBox,
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
                      sizedBox,
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
            ],
          ),
        ),
      ),
    );
  }
}
