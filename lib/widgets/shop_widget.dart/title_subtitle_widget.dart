import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleSubtitleWidget extends StatelessWidget {
  const TitleSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.w,
        right: 20.w,
        bottom: 1.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20.sp,
                ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 8.sp,
            ),
          ),
        ],
      ),
    );
  }
}
