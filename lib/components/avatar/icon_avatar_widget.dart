import 'package:flutter/material.dart';

class IconAvatarWidget extends StatelessWidget {
  final IconData icon;
  final Color backgroungColour;
  final double radiusAvatar;
  final double iconSize;
  const IconAvatarWidget({
    super.key,
    required this.icon,
    required this.backgroungColour,
    required this.radiusAvatar,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusAvatar,
      backgroundColor: backgroungColour,
      child: Icon(icon, size: iconSize),
    );
  }
}
