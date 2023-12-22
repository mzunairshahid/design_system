import 'package:flutter/material.dart';
import '../../utilities/constant.dart';

class ImageAttachmentChatWidget extends StatelessWidget {
  final String upperText;
  final String mainTitle;
  final String description;
  final String imageUrl;
  const ImageAttachmentChatWidget(
      {super.key,
      required this.upperText,
      required this.mainTitle,
      required this.description,
      required this.imageUrl});

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
            ),
            const SizedBox(height: 16),
            Image.asset(
              imageUrl,
              height: 180,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
