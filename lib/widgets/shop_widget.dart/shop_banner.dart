import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MSFTBanner extends StatelessWidget {
  const MSFTBanner({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      width: 100.w,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "This is MSFT",
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 18.sp,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "MSFT designs and 100+ brands",
            ),
          ),
        ],
      ),
    );
  }
}
