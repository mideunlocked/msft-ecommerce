import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.iconUrl,
    required this.pageController,
  });

  final PageController pageController;
  final int currentIndex;
  final String iconUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => changePage(index, context),
      icon: Image.asset(
        iconUrl,
        color: currentIndex == index ? Colors.black : Colors.grey,
        height: 5.h,
        width: 5.w,
      ),
    );
  }

  // function to change page in bottom nav
  void changePage(int index, context) {
    pageController.jumpToPage(index);
  }
}
