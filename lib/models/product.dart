class Product {
  final String id;
  final String name;
  final double rating;
  final String subName;
  final String saleCount;
  final String categoryId;
  final String? description;
  final List<dynamic> sizes;
  final List<dynamic> imageUrl;
  final Map<String, dynamic> productDetails;

  const Product({
    required this.id,
    required this.name,
    required this.rating,
    required this.subName,
    required this.imageUrl,
    required this.saleCount,
    required this.description,
    required this.sizes,
    required this.categoryId,
    required this.productDetails,
  });
}
