import 'package:flutter/material.dart';
import 'package:msft/widgets/general_widget/back_button.dart';
import 'package:sizer/sizer.dart';

import '../../data/product_data.dart';
import '../../widgets/product_tile/product_tile.dart';

class CategoryItemScreen extends StatelessWidget {
  const CategoryItemScreen(
      {super.key, required this.categoryName, required this.id});

  final String categoryName;
  final String id;

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var bodyLarge = textTheme.bodyLarge;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 1.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              SizedBox(
                height: 1.h,
              ),
              Text(
                categoryName,
                style: bodyLarge?.copyWith(
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.sp,
                    crossAxisSpacing: 8.sp,
                    mainAxisExtent: 45.h,
                  ),
                  children: products
                      .where((e) => e.categoryId == id)
                      .map(
                        (data) => ProductTile(data: data),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
