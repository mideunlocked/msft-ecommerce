import 'product.dart';

class Categories {
  final String id;
  final String categoryName;
  final String? categoryIcon;
  final List<Product> products;
  final String? categoryImageUrl;

  const Categories({
    required this.id,
    required this.categoryName,
    this.categoryIcon = "",
    this.categoryImageUrl = "",
    required this.products,
  });
}
