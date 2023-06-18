import 'product.dart';

class Categories {
  final String id;
  final String categoryName;
  final String categoryIcon;
  final List<Product> products;

  const Categories({
    required this.id,
    required this.categoryName,
    required this.categoryIcon,
    required this.products,
  });
}
