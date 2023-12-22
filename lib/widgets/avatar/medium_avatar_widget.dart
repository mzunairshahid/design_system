import 'package:flutter/material.dart';

class MediumAvatarWidget extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;

  const MediumAvatarWidget({
    super.key,
    required this.backgroundColor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: backgroundColor,
      // child: ClipOval(
      child: Image(
        image: AssetImage(imageUrl),
        height: 30,
        width: 30,
        fit: BoxFit.fill,
      ),
      // ),
    );
  }
}
