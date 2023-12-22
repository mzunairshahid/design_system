import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';

class TargetSalesCardwidget extends StatelessWidget {
  final String title;
  final String avatarImageURL;
  final Color avatarColor;
  final String trailingTitle;
  final String trailingImageURL;
  final String percentage;
  final String subtitle;

  const TargetSalesCardwidget({
    super.key,
    required this.title,
    required this.avatarImageURL,
    required this.avatarColor,
    required this.trailingTitle,
    required this.trailingImageURL,
    required this.percentage,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 55),
            child: MediumAvatarWidget(
                backgroundColor: avatarColor, imageUrl: avatarImageURL),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kExtraSmalSemibold,
                ),
                const SizedBox(height: 16),
                Text(percentage, style: kLargeBold),
                Text(
                  subtitle,
                  style: kCardSubtitle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              children: [
                Text(
                  trailingTitle,
                  style: kLableUpward,
                ),
                Image.asset(
                  trailingImageURL,
                  height: 16,
                  width: 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
