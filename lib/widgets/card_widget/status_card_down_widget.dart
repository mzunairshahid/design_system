import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/label/downward_label.dart';

class StatusCardDownwardWidget extends StatelessWidget {
  final String cardTitle;
  final String downwardLabeltitle;
  final String amount;
  final String subtitle;

  const StatusCardDownwardWidget({
    super.key,
    required this.cardTitle,
    required this.downwardLabeltitle,
    required this.amount,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardTitle,
                  style: kExtraSmalSemibold,
                ),
                DownwardLableWidget(
                  title: downwardLabeltitle,
                  backgroundColor: kRedBackgroundColor,
                  imageurl: 'lib/asset/images/downward_label_icon.png',
                )
              ],
            ),
            const SizedBox(height: 16),
            Text('\$$amount', style: kLargeBold),
            Text(subtitle, style: kCardSubtitle),
          ],
        ),
      ),
    );
  }
}
