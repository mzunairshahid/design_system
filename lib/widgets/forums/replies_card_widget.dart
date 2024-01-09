import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/components/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/components/avatar/small_avatar_widget.dart';

import '../../utilities/constant.dart';
import '../../utilities/text_const_color.dart';

class RepliesCardWidget extends StatelessWidget {
  final Color avatarbackgroundColor;
  final String avatarImageUrl;
  final String name;
  final String messageText;
  final String upVoteText;
  final String messageCounter;
  final String hours;
  final String reportText;

  const RepliesCardWidget(
      {super.key,
      required this.avatarbackgroundColor,
      required this.avatarImageUrl,
      required this.name,
      required this.messageText,
      required this.upVoteText,
      required this.messageCounter,
      required this.hours,
      required this.reportText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediumAvatarWidget(
            backgroundColor: avatarbackgroundColor, imageUrl: avatarImageUrl),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kSmallSemibold,
              ),
              Text(
                messageText,
                style: kSmallRegular,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SmallAvatarWidget(
                          backgroundColor: kPrimaryButtonTextColor,
                          imageUrl: 'lib/asset/images/arrow_upward_icon.png'),
                      Text(
                        upVoteText,
                        style: kCardSubtitle,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Image.asset(
                        'lib/asset/images/message_active_icon.png',
                        height: 14,
                        width: 14,
                        color: kTextHeadingColor4,
                      ),
                      Text(
                        messageCounter,
                        style: kCardSubtitle,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        hours,
                        style: kCardSubtitle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'lib/asset/images/report_icon.png',
                        height: 11,
                        width: 11,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        reportText,
                        style: kCardSubtitle,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
