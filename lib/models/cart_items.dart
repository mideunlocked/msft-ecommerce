import 'package:msft/models/product.dart';

class CartItem {
  final String id;
  final int quantity;
  final Product product;
  final String totalPrice;

  const CartItem({
    required this.id,
    required this.product,
    required this.quantity,
    required this.totalPrice,
  });
}
