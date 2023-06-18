import 'cart_items.dart';

class Cart {
  final List<CartItem> items;
  final String totalPrice;
  final int itemCount;

  const Cart({
    required this.items,
    required this.itemCount,
    required this.totalPrice,
  });
}
