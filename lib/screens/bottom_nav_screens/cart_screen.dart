import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../data/cart_data.dart';
import '../../models/cart_items.dart';
import '../../widgets/cart/cart_tile.dart';
import '../../widgets/cart/total_p_checkout.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String totalPrice = "0";

  @override
  void initState() {
    super.initState();

    totalPrice = getCartTotalPrice();
  }

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    var bodyLarge = textTheme.bodyLarge;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 3.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: bodyLarge?.copyWith(
                fontSize: 25.sp,
              ),
            ),
            Text(
              "${cart.itemCount} product(s)",
              style: textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: Column(
                children: cart.items
                    .map((e) => CartTile(
                          product: e.product,
                          quantity: e.quantity.toString(),
                          totalPrice: e.totalPrice,
                        ))
                    .toList(),
              ),
            ),
            TotalPriceCheckoutWidget(
                totalPrice: totalPrice, bodyLarge: bodyLarge),
            SizedBox(
              height: 7.h,
            ),
          ],
        ),
      ),
    );
  }

  String getCartTotalPrice() {
    int? totalPrice;
    CartItem? item;
    List<CartItem> cartItems = cart.items;

    for (item in cartItems) {
      totalPrice = totalPrice ?? 0 + int.parse(item.totalPrice);
    }

    return totalPrice.toString();
  }
}
