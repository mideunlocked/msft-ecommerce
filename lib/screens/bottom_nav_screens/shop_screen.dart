import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/category_data.dart';
import '../../data/product_data.dart';
import '../../widgets/general_widget/msft_logo_image.dart';
import '../../widgets/product_tile/product_tile.dart';
import '../../widgets/shop_widget.dart/category_tile.dart';
import '../../widgets/shop_widget.dart/shop_banner.dart';
import '../../widgets/shop_widget.dart/title_subtitle_widget.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var sizedBox = SizedBox(
      height: 3.h,
    );
    var smallSizedBox = SizedBox(
      height: 1.h,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MsftLogoImage(),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MSFTBanner(textTheme: textTheme),
                    sizedBox,
                    const ShopScreenPadding(
                      child: TitleSubtitleWidget(
                        title: "Categories",
                        subtitle:
                            "Explore our wide range of categories and discover something new.",
                      ),
                    ),
                    smallSizedBox,
                    SizedBox(
                      height: 18.h,
                      width: 100.w,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        children: categories
                            .map(
                              (e) => CategoryTile(
                                catId: e.id,
                                title: e.categoryName,
                                imageUrl: e.categoryImageUrl ?? "",
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    sizedBox,
                    const ShopScreenPadding(
                      child: TitleSubtitleWidget(
                        title: "Trending 🔥",
                        subtitle:
                            "Trending products are a curated collections of our best selling items",
                      ),
                    ),
                    smallSizedBox,
                    ShopScreenPadding(
                      child: GridView(
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
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopScreenPadding extends StatelessWidget {
  const ShopScreenPadding({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      child: child,
    );
  }
}
