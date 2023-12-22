import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/stacks_avatar_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../utilities/color_constant.dart';

class OnGoingListWidget extends StatelessWidget {
  final String mainImage;
  final String title;
  final Color avatarBackground;
  final String avatarImage1;
  final String avatarImage2;
  final String avatarImage3;
  const OnGoingListWidget({
    super.key,
    required this.mainImage,
    required this.title,
    required this.avatarBackground,
    required this.avatarImage1,
    required this.avatarImage2,
    required this.avatarImage3,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(mainImage, width: 84, height: 84),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: kLargeBold),
              Row(
                children: [
                  Image.asset(
                    'lib/asset/images/calender_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  const Text('26.10.201', style: kExtraSmalSemibold),
                  const SizedBox(width: 16),
                  Image.asset(
                    'lib/asset/images/attachment_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  const Text(
                    '1',
                    style: kExtraSmalSemibold,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'lib/asset/images/check_list_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  const Text('10', style: kExtraSmalSemibold)
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              LinearPercentIndicator(
                width: 200,
                lineHeight: 3,
                percent: 0.8,
                backgroundColor: kDisabledButtonColor,
                progressColor: kCircleCheckListColor,
                trailing: const Text('80%'),
              ),
            ],
          ),
          const Spacer(),
          StacksAvatarWidget(
            avatarBackground: avatarBackground,
            imageUrl1: avatarImage1,
            imageUrl2: avatarImage2,
            imageUrl3: avatarImage3,
          ),
        ],
      ),
    ));
  }
}
