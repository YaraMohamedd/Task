import 'package:cubit_test/constants.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String imageAssets;
  final bool isActive;
  final bool hasBorder;

  const ProfilePic({
    Key? key,
    required this.imageAssets,
    this.isActive = false,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage(
              imageAssets
              ,
            ),
          ),
        ),
        isActive
            ? Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  color: Palette.online,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ))),
        )
            : const SizedBox.shrink(),
      ],
    );
  }
}