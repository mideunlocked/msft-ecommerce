import 'package:msft/models/cart.dart';

import '../models/cart_items.dart';
import 'product_data.dart';

List<CartItem> carts = [
  CartItem(
      id: "1",
      product: products.firstWhere((e) => e.id == "2"),
      quantity: 2,
      totalPrice: (int.parse(products
                  .firstWhere((e) => e.id == "2")
                  .productDetails["Retail Price"]) *
              2)
          .toString()),
];

Cart cart = Cart(
  items: carts,
  itemCount: carts.length,
  totalPrice: carts.first.totalPrice,
);
