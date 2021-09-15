

import '../Models/story.dart';
import 'package:cubit_test/Models/post.dart';
import 'package:cubit_test/Models/user.dart';


final User currentUser = User(
 name: 'Marcus Ng',
 userImage:
 'assets/image1.jpg',
);
final List<User> onlineUsers = [
 User(
  name: 'Omar Hany',
  userImage:
  'assets/image1.jpg',
 ),
 User(
  name: 'Rana Mohamed',
  userImage:
  'assets/image2.jpg',
 ),
 User(
  name: 'Sally Mohamed',
  userImage:
  'assets/image3.jpg',
 ),
 User(
  name: 'Amany Shahin',
  userImage:
  'assets/image4.jpg',
 ),
 User(
  name: 'Ramy Mohamed',
  userImage:
  'assets/image5.jpg',
 ),
 User(
  name: 'Reem Foad',
  userImage:
  'assets/image6.jpg',
 ),

];

final List<Story> stories = [
 Story(
  user: onlineUsers[2],
  imageUrl:
  'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
 ),
 Story(
  user: onlineUsers[6],
  imageUrl:
  'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  isViewed: true,
 ),
 Story(
  user: onlineUsers[3],
  imageUrl:
  'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
 ),
 Story(
  user: onlineUsers[9],
  imageUrl:
  'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  isViewed: true,
 ),
 Story(
  user: onlineUsers[7],
  imageUrl:
  'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
 ),
 Story(
  user: onlineUsers[2],
  imageUrl:
  'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
 ),
 Story(
  user: onlineUsers[6],
  imageUrl:
  'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  isViewed: true,
 ),
 Story(
  user: onlineUsers[3],
  imageUrl:
  'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
 ),
 Story(
  user: onlineUsers[9],
  imageUrl:
  'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  isViewed: true,
 ),
 Story(
  user: onlineUsers[7],
  imageUrl:
  'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
 ),
];

final List<Post>posts=[
 Post(
     user: currentUser,
     caption: 'Everything in nature invites us constantly to be what we are.',
     timeAgo: '40',
     imagePost: 'assets/image1.jpg',
     likes: 40,
     comments: 40,
     shares: 80
 ),
 Post(
     user: currentUser,
     caption: 'Deep in their roots, all flowers keep the light',
     timeAgo: '45s',
     imagePost: 'assets/image2.jpg',
     likes: 70,
     comments: 50,
     shares: 80
 ),
 Post(
     user: currentUser,
     caption: 'In all things of nature there is something of the marvelous.',
     timeAgo: '33s',
     likes: 70,
     imagePost: 'assets/image3.jpg',
     comments: 50,
     shares: 80
 ),
 Post(
     user: currentUser,
     caption: 'Nature always wears the colors of the spirit. ',
     timeAgo: '20s',
     imagePost: 'assets/image4.jpg',
     likes: 70,
     comments: 50,
     shares: 80
 ),
 Post(
     user: currentUser,
     caption: 'Nature is not a place to visit. It is home.',
     timeAgo: '15s',
     imagePost: 'assets/image5.jpg',
     likes: 70,
     comments: 50,
     shares: 80
 ),
];