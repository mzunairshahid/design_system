import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class ClientMeetingCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Color cardColor;
  const ClientMeetingCardWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        title: Text(
          title,
          style: kMediumBold,
        ),
        subtitle: Text(
          subtitle,
          style: kCardSubtitle,
        ),
        leading: Image.asset(
          imageUrl,
          height: 36,
          width: 36,
        ),
      ),
    );
  }
}
