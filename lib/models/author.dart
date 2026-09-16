class Author {
  final int authorId;
  final String name;
  final String imageUrl;
  final String bio;
  final int followerCount;

  Author({
    required this.authorId,
    required this.name,
    required this.imageUrl,
    required this.bio,
    required this.followerCount,
  });

  String get followerLabel {
    return followerCount == 1 ? "1 follower" : "$followerCount followers";
  }
}
