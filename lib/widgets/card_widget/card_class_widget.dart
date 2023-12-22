import 'package:flutter/material.dart';
import 'package:ouditor_design_system/widgets/tab_block/tab_block_widget.dart';

import '../../utilities/constant.dart';

class CardClassWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String labelButtonText;
  // final Function onPress;
  final String dateAndTime;
  final String minutes;

  const CardClassWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.labelButtonText,
      // required this.onPress,
      required this.dateAndTime,
      required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                imageUrl,
                height: 162,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TabBlockWidget(title: labelButtonText, onPress: () {}),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: kMediumLargeSemibold,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  'lib/asset/images/calender_icon.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6.4,
                ),
                Text(
                  dateAndTime,
                  style: kCardSubtitle,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'lib/asset/images/time_circle_icon.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6.4,
                ),
                Text(minutes, style: kCardSubtitle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
