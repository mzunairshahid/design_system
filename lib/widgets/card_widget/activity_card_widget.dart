import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class ActivtiyCardWidget extends StatelessWidget {
  final String companyName;
  final String dateTime;
  final String title;

  final String iconUrl;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;
  const ActivtiyCardWidget(
      {super.key,
      required this.companyName,
      required this.dateTime,
      required this.title,
      required this.iconUrl,
      required this.subtitle1,
      required this.subtitle2,
      required this.subtitle3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                companyName,
                style: kCardSubtitle,
              ),
              Text(
                ' \• $dateTime ',
                style: kCardSubtitle,
              )
            ],
          ),
          Text(
            title,
            style: kMediumBold,
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Image.asset(
                iconUrl,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              RichText(
                  text: TextSpan(
                      text: subtitle1,
                      style: kMediumSemibold,
                      children: [
                    TextSpan(text: subtitle2, style: kMediumMedium),
                    TextSpan(text: subtitle3, style: kSecondaryTextButton)
                  ]))
            ],
          )
        ],
      ),
    );
  }
}
