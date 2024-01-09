import 'package:flutter/material.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';
import '../../utilities/constant.dart';

class SecurityCardWidget extends StatelessWidget {
  final Color avatarBackgroundColor;
  final String avatarIconUrl;
  final String tile;
  final String subtitle;
  final String iconUrl;
  final Color iconColor;
  final Widget button;
  final String iconText;
  const SecurityCardWidget(
      {super.key,
      required this.avatarBackgroundColor,
      required this.avatarIconUrl,
      required this.tile,
      required this.subtitle,
      required this.iconUrl,
      required this.iconColor,
      required this.button,
      required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MediumAvatarWidget(
            backgroundColor: avatarBackgroundColor, imageUrl: avatarIconUrl),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tile, style: kSmallSemibold),
              const SizedBox(height: 10),
              Text(subtitle, style: kCardSubtitle),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    iconUrl,
                    height: 12,
                    width: 12,
                    color: iconColor,
                  ),
                  const SizedBox(width: 7),
                  Text(iconText, style: kPendingLabelButton),
                ],
              )
            ],
          ),
        ),
        button,
      ],
    );
  }
}
