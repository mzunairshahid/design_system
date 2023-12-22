import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class ForumcardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final Widget labelButon;

  const ForumcardWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.labelButon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          imageUrl,
          height: 41,
          width: 41,
        ),
        const SizedBox(
          width: 14,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kSmallBold,
              ),
              Text(
                subtitle,
                style: kCardSubtitle,
              )
            ],
          ),
        ),
        labelButon
      ],
    );
  }
}
