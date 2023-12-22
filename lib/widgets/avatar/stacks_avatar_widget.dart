import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class StacksAvatarWidget extends StatelessWidget {
  final Color avatarBackground;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;

  const StacksAvatarWidget({
    super.key,
    required this.avatarBackground,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 32,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: avatarBackground,
                    image: DecorationImage(
                      image: AssetImage(imageUrl1),
                      fit: BoxFit.fill,
                    ),
                    shape: const OvalBorder(
                      side:
                          BorderSide(width: 2, color: kPrimaryButtonTextColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: avatarBackground,
                    image: DecorationImage(
                      image: AssetImage(imageUrl2),
                      fit: BoxFit.fill,
                    ),
                    shape: const OvalBorder(
                      side:
                          BorderSide(width: 2, color: kPrimaryButtonTextColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: avatarBackground,
                    image: DecorationImage(
                      image: AssetImage(imageUrl3),
                      fit: BoxFit.fill,
                    ),
                    shape: const OvalBorder(
                      side:
                          BorderSide(width: 2, color: kPrimaryButtonTextColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
