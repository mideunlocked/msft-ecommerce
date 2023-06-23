import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller,
    required this.function,
  });

  final TextEditingController controller;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 80.w,
      margin: EdgeInsets.symmetric(vertical: 2.h),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 10.sp,
            color: Colors.black26,
          ),
          prefixIcon: const Icon(Icons.search_rounded),
          prefixIconColor: Colors.black26,
          border: InputBorder.none,
        ),
        onSubmitted: (_) {
          function();
        },
      ),
    );
  }
}
