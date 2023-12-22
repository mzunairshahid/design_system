import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/text_const_color.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/avatar/small_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/normal_label_button_widget.dart';

import '../../utilities/constant.dart';

class LatestDiscussionCardWidget extends StatelessWidget {
  final String iconUrl;
  final String counterText;
  final String avatarImageUrl;
  final Color avatarBackgroundColor;
  final String questionText;
  final String name;
  final String massages;
  final String hours;
  final String labelText;
  final String subtitle;
  const LatestDiscussionCardWidget(
      {super.key,
      required this.iconUrl,
      required this.counterText,
      required this.avatarImageUrl,
      required this.avatarBackgroundColor,
      required this.questionText,
      required this.name,
      required this.massages,
      required this.hours,
      required this.labelText,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SmallAvatarWidget(
                backgroundColor: kPrimaryButtonTextColor, imageUrl: iconUrl),
            Text(
              counterText,
              style: kCardSubtitle,
            )
          ],
        ),
        const SizedBox(width: 12),
        MediumAvatarWidget(
          backgroundColor: kOffLineColor,
          imageUrl: avatarImageUrl,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionText,
                style: kSmallSemibold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: kExtraSmalSemibold,
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            'lib/asset/images/message_active_icon.png',
                            height: 14,
                            width: 14,
                            color: kTextHeadingColor4,
                          ),
                          Text(
                            massages,
                            style: kCardSubtitle,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            hours,
                            style: kCardSubtitle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      NormalStateLabelWidget(
                          labelText: labelText,
                          backgroundColor: kNormalStateButtonBackgroundColor),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                subtitle,
                style: kCardSubtitle,
              )
            ],
          ),
        )
      ],
    );
  }
}
