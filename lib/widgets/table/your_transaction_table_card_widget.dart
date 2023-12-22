import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';

class YourTansactionHistoryCardWidget extends StatelessWidget {
  final String avatarImage;
  final Color avatarColor;
  final String title;
  final String date;
  final String amount;
  final Widget labelButton;

  const YourTansactionHistoryCardWidget({
    super.key,
    required this.avatarColor,
    required this.avatarImage,
    required this.title,
    required this.date,
    required this.amount,
    required this.labelButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Row(children: [
            MediumAvatarWidget(
                backgroundColor: avatarColor, imageUrl: avatarImage),
            const SizedBox(width: 10),
            Text(
              title,
              style: kExtraSmalSemibold,
            )
          ]),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date, style: kSmallMedium),
              Text(
                '\$ $amount',
                style: kSmallMedium,
              ),
              labelButton
            ],
          ),
        ),
      ],
    );
  }
}
