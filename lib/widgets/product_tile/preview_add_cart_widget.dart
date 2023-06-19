import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PreviewAddCartWidget extends StatelessWidget {
  const PreviewAddCartWidget({
    super.key,
    required this.function,
  });

  final Function function;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.black,
      onPressed: () {
        function();
      },
      label: SizedBox(
        width: 35.w,
        child: const Text(
          "Add to cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
