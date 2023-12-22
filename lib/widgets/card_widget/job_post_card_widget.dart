import 'package:flutter/material.dart';
import '../../utilities/constant.dart';

class JobPostCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String users;
  final String location;

  const JobPostCardWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.users,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  height: 48,
                  width: 48,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kMediumLargeSemibold,
                    ),
                    Text(
                      subtitle,
                      style: kProductSubtitle,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: kRowTextStyle,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/images/user_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      users,
                      style: kSmallMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/images/location_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      location,
                      style: kSmallMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'lib/asset/images/bookmark_icon.png',
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
