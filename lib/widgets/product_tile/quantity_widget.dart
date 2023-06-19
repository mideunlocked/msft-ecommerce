import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'add_minus_widget.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    super.key,
    required this.quantity,
    required this.addFunction,
    required this.minusFunction,
  });

  final int quantity;
  final Function addFunction;
  final Function minusFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddMinusWidget(
            sign: "-",
            function: () {
              minusFunction();
            },
          ),
          SizedBox(
              width: 10.w,
              child: Text(
                quantity.toString(),
                textAlign: TextAlign.center,
              )),
          AddMinusWidget(
            sign: "+",
            function: () {
              addFunction();
            },
          ),
        ],
      ),
    );
  }
}
