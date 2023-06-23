import 'package:flutter/material.dart';
import 'package:msft/widgets/general_widget/back_button.dart';
import 'package:msft/widgets/general_widget/search_widget.dart';
import 'package:sizer/sizer.dart';

import '../data/product_data.dart';
import '../widgets/product_tile/product_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.h,
                left: 4.w,
                right: 4.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  SearchWidget(
                    controller: TextEditingController(),
                    function: () {},
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: controller.text.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Trying searching for a product",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    )
                  : GridView(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5.sp,
                        crossAxisSpacing: 8.sp,
                        mainAxisExtent: 45.h,
                      ),
                      children: products
                          .where(
                            (e) => e.name
                                .toLowerCase()
                                .contains(controller.text.trim().toLowerCase()),
                          )
                          .map(
                            (data) => ProductTile(data: data),
                          )
                          .toList(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
