import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddMinusWidget extends StatelessWidget {
  const AddMinusWidget({
    super.key,
    required this.sign,
    required this.function,
  });

  final String sign;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 1.sp,
          horizontal: 8.sp,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          sign,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white,
                fontSize: 12.sp,
              ),
        ),
      ),
    );
  }
}
