import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class ContactCardWidget extends StatelessWidget {
  final String imageUrl;
  final String text;

  const ContactCardWidget(
      {super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          height: 20,
          width: 20,
        ),
        const SizedBox(width: 16),
        Expanded(child: Text(text, style: kSmallMedium))
      ],
    );
  }
}
