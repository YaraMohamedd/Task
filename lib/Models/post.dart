import 'package:cubit_test/Models/user.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imagePost;
  final int likes;
  final int comments;
  final int shares;
  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
      this.imagePost,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}