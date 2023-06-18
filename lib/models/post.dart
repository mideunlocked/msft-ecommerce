class Post {
  final String id;
  final String userId;
  final int likeCount;
  final List<dynamic> imageUrl;

  const Post({
    required this.id,
    required this.userId,
    required this.imageUrl,
    required this.likeCount,
  });
}
