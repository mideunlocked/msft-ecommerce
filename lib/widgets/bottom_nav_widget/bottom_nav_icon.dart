import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.iconUrl,
  });

  final int currentIndex;
  final String iconUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconUrl,
      color: currentIndex == index ? Colors.white : Colors.white60,
      height: 5.h,
      width: 5.h,
    );
  }
}
