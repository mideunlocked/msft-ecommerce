import 'package:flutter/material.dart';
import 'package:msft/screens/search_screen.dart';
import 'package:msft/widgets/general_widget/msft_logo_image.dart';
import 'package:sizer/sizer.dart';

import '../../data/category_data.dart';
import 'category_item_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var bodyLarge = textTheme.bodyLarge;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MsftLogoImage(),
                IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const SearchScreen(),
                    ),
                  ),
                  icon: const Icon(
                    Icons.search_rounded,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Categories",
              style: bodyLarge?.copyWith(
                fontSize: 25.sp,
              ),
            ),
            Text(
              "Explore our wide range of categories and discover something new that suits your interests and preferences.",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 8.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: categories.map(
                  (e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => CategoryItemScreen(
                              categoryName: e.categoryName,
                              id: e.id,
                            ),
                          ),
                        ),
                        child: Text(
                          e.categoryName,
                          style: bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
