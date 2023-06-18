import 'package:msft/models/cart.dart';

import 'post.dart';
import 'product.dart';
import 'social_handles.dart';

class Users {
  final String id;
  final String name;
  final String username;
  final String email;
  final Cart cart;
  final List<Product> favourites;
  final SocialHandles socialHandles;
  final List<Post>? posts;

  const Users({
    required this.id,
    required this.name,
    required this.cart,
    required this.email,
    required this.username,
    required this.posts,
    required this.favourites,
    required this.socialHandles,
  });
}
