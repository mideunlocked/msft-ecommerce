import 'package:flutter/material.dart';
import 'package:msft/data/cart_data.dart';
import 'package:msft/models/cart_items.dart';
import 'package:msft/models/product.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var first2 = cart.items.first;
    var product2 = first2.product;
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
              "${first2.quantity} products",
              style: textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            CartTile(product2: product2, first2: first2),
            CartTile(product2: product2, first2: first2),
            CartTile(product2: product2, first2: first2),
            CartTile(product2: product2, first2: first2),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Total:"),
                    Text(
                      "\$1000",
                      style: bodyLarge,
                    ),
                  ],
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  label: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 5.w,
                    ),
                    child: const Text("Checkout"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.product2,
    required this.first2,
  });

  final Product product2;
  final CartItem first2;

  @override
  Widget build(BuildContext context) {
    var of = Theme.of(context);
    var textTheme = of.textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product2.imageUrl[0],
                height: 10.h,
                width: 20.w,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product2.name,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  product2.subName,
                  style: const TextStyle(
                    color: Colors.black26,
                  ),
                ),
                Text(
                  "${first2.quantity} x ${product2.productDetails["Retail Price"]}",
                  style: textTheme.bodyLarge?.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.delete_rounded,
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "\$${first2.totalPrice}",
                  style: textTheme.bodyLarge?.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
