import 'package:flutter/material.dart';
import '../../utilities/constant.dart';

class AtttachmentChatWidget extends StatelessWidget {
  final String upperText;
  final String mainTitle;
  final String description;
  const AtttachmentChatWidget(
      {super.key,
      required this.upperText,
      required this.mainTitle,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              upperText,
              style: kActionDropdownStyle,
            ),
            const SizedBox(height: 16),
            Text(
              mainTitle,
              style: kMediumLargeBold,
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: kSmallRegular,
            )
          ],
        ),
      ),
    );
  }
}
