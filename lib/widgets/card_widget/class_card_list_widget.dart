import 'package:flutter/material.dart';
import '../../utilities/constant.dart';

class ClassCardListWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String dateTime;
  final Widget labelBotton;
  final String minutes;
  const ClassCardListWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.labelBotton,
      required this.dateTime,
      required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                imageUrl,
                height: 108,
                width: 108,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  labelBotton,
                  Text(
                    title,
                    style: kMediumLargeSemibold,
                  ),
                  const SizedBox(
                    height: 13,
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
                        dateTime,
                        style: kCardSubtitle,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'lib/asset/images/time_circle_icon.png',
                        height: 20,
                        width: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        minutes,
                        style: kCardSubtitle,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
