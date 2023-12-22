import 'package:flutter/material.dart';

class BigAvatarWidget extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;

  const BigAvatarWidget({
    super.key,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: backgroundColor,
      child: ClipOval(
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
