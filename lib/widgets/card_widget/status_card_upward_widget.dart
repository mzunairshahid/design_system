import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/label/upward_label.dart';

class StatusCardUpwardWidget extends StatelessWidget {
  final String cardTitle;
  final String upwardLabelTitle;
  // final String downwardLabeltitle;
  final String amount;
  final String subtitle;

  const StatusCardUpwardWidget({
    super.key,
    required this.cardTitle,
    required this.upwardLabelTitle,
    // required this.downwardLabeltitle,
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
                UpwardLableWidget(
                  title: upwardLabelTitle,
                  backgroundColor: kSuccessButtonBackgroundColor,
                  imageUrl: 'lib/asset/images/upward_label_icon.png',
                ),
                // DownwardLableWidget(title: downwardLabeltitle)
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
