
class InstagramPost {
  final String id;
  final String username;
  final String caption;
  final String imageUrl;

  InstagramPost({
    required this.id,
    required this.username,
    required this.caption,
    required this.imageUrl,
  });
}

class InstagramUser {
  final String id;
  final String username;
  final String profileImageUrl;
  final int followersCount;

  InstagramUser({
    required this.id,
    required this.username,
    required this.profileImageUrl,
    required this.followersCount,
  });
}

