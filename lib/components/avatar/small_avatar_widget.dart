import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class SmallAvatarWidget extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;

  const SmallAvatarWidget({
    super.key,
    required this.backgroundColor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kDisabledButtonColor,
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          radius: 12,
          backgroundColor: backgroundColor,
          child: Image(
            image: AssetImage(imageUrl),
            height: 22,
            width: 22,
            fit: BoxFit.fill,
          ),
        ));
  }
}
