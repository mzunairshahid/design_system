import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import '../../utilities/constant.dart';

class StatCardWidget extends StatelessWidget {
  final String iconUrl;
  final Color iconBackgroundColor;
  final String title;
  final String countText;
  final Color avatarBackground;

  const StatCardWidget({
    super.key,
    required this.iconUrl,
    required this.iconBackgroundColor,
    required this.title,
    required this.countText,
    required this.avatarBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: avatarBackground,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: iconBackgroundColor,
                child: Image.asset(
                  iconUrl,
                  width: 17,
                  height: 18,
                  color: kPrimaryButtonTextColor,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: kSmallMedium),
                const SizedBox(height: 6),
                Text(
                  countText,
                  style: kExtraLargeSemibold,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
