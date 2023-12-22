import 'package:flutter/material.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/button/icon_button/tertiary_icon_button_widget.dart';

import '../../utilities/constant.dart';

class HitUsersCardWidget extends StatelessWidget {
  final Color avatarbackgroundColor;
  final String avatarImageUrl;
  final String name;
  final String subName;
  final String buttonText;
  final String iconUrl;
  final Function onPress;
  const HitUsersCardWidget(
      {super.key,
      required this.avatarbackgroundColor,
      required this.avatarImageUrl,
      required this.name,
      required this.subName,
      required this.buttonText,
      required this.iconUrl,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MediumAvatarWidget(
            backgroundColor: avatarbackgroundColor, imageUrl: avatarImageUrl),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kSmallSemibold,
              ),
              const SizedBox(height: 2),
              Text(
                subName,
                style: kCardSubtitle,
              )
            ],
          ),
        ),
        TertiaryIconButtonWidget(
            label: buttonText, iconUrl: iconUrl, onPressed: onPress)
      ],
    );
  }
}
