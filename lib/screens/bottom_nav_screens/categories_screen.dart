import 'package:flutter/material.dart';
import 'package:msft/widgets/general_widget/msft_logo_image.dart';
import 'package:sizer/sizer.dart';

import '../../data/category_data.dart';

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
            const MsftLogoImage(),
            SizedBox(
              height: 0.5.h,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categories.map(
                (e) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          e.categoryIcon!,
                          height: 20.sp,
                          width: 20.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          e.categoryName,
                          style:
                              bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
