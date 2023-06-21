import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MsftLogoImage extends StatelessWidget {
  const MsftLogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/app/black_logo.png",
      fit: BoxFit.cover,
      height: 5.h,
      width: 30.w,
    );
  }
}
