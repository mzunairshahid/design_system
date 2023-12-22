import 'package:flutter/material.dart';
import '../../utilities/constant.dart';

class StoriesCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String dateTime;
  const StoriesCardWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Row(
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
                        dateTime,
                        style: kCardSubtitle,
                      ),
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
