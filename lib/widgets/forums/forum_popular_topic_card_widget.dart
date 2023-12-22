import 'package:flutter/material.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';
import '../../utilities/constant.dart';

class ForumPopularTopicCardWidget extends StatelessWidget {
  final Color avatarBackgroundColor;
  final String avatarImageUrl;
  final String title;
  final String subtitle;
  final Widget labelButton;
  const ForumPopularTopicCardWidget({
    super.key,
    required this.avatarBackgroundColor,
    required this.avatarImageUrl,
    required this.title,
    required this.subtitle,
    required this.labelButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MediumAvatarWidget(
            backgroundColor: avatarBackgroundColor, imageUrl: avatarImageUrl),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kSmallBold,
              ),
              const SizedBox(height: 10),
              Text(
                subtitle,
                style: kCardSubtitle,
              )
            ],
          ),
        ),
        labelButton
      ],
    );
  }
}
