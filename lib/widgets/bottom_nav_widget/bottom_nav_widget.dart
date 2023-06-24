import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'bottom_nav_icon.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });

  final PageController pageController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.2.h),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black54,
            Colors.transparent,
          ],
        ),
      ),
      child: Container(
        height: 6.h,
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavIcon(
              pageController: pageController,
              currentIndex: currentIndex,
              index: 0,
              iconUrl: "assets/icons/clothes-hanger.png",
            ),
            BottomNavIcon(
              pageController: pageController,
              currentIndex: currentIndex,
              index: 1,
              iconUrl: "assets/icons/category.png",
            ),
            // BottomNavIcon(
            //   pageController: pageController,
            //   currentIndex: currentIndex,
            //   index: 2,
            //   iconUrl: "assets/icons/movie.png",
            // ),
            BottomNavIcon(
              pageController: pageController,
              currentIndex: currentIndex,
              index: 2,
              iconUrl: "assets/icons/shopping-cart.png",
            ),
            BottomNavIcon(
              pageController: pageController,
              currentIndex: currentIndex,
              index: 3,
              iconUrl: "assets/icons/user.png",
            ),
          ],
        ),
      ),
    );
  }
}
