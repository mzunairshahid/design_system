import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class DribbleAttachmentWidget extends StatelessWidget {
  final String upperText;
  final String title;
  final String imageUrl;
  const DribbleAttachmentWidget(
      {super.key,
      required this.upperText,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(upperText, style: kActionDropdownStyle),
            const SizedBox(height: 16),
            Text(title, style: kMediumLargeBold),
            const SizedBox(height: 16),
            Image.asset(imageUrl, height: 250, width: double.infinity)
          ],
        ),
      ),
    );
  }
}
