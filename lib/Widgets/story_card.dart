
import 'package:cubit_test/Widgets/profile_pic.dart';
import 'package:cubit_test/constants.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String story;
  final String name;


  const StoryCard({ required this.story, required this.name}) ;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          story,
          height: double.infinity,
          width: 110,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: double.infinity,
        width: 110,
        decoration: BoxDecoration(
          gradient: Palette.storyGradient,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      Positioned(
          top: 8,
          left: 8,
          child: ProfilePic(
            imageAssets: story,
          )),
      Positioned(
        bottom: 8.0,
        left: 8,
        right: 8,
        child: Text(
         name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      )
    ]);
  }
}

class UserStoryCard extends StatelessWidget {

  final String image;

  const UserStoryCard({ required this.image}) ;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
         image,
          height: double.infinity,
          width: 110,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: double.infinity,
        width: 110,
        decoration: BoxDecoration(
          gradient: Palette.storyGradient,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      Positioned(
        top: 8,
        left: 8,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.add),
            iconSize: 30,
            color: Palette.facebookBlue,
            onPressed: () => print("Add Story"),
          ),
        ),
      ),
      Positioned(
        bottom: 8.0,
        left: 8,
        right: 8,
        child: Text(
          "Add to Story",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      )
    ]);
  }
}