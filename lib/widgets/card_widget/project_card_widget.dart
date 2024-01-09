import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/avatar/stacks_avatar_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProjectCardWidget extends StatelessWidget {
  final String mainImageUrl;
  final String companyTitle;
  final String date;
  final String attachmentFileCount;
  final String checklistText;
  final double percent;
  final String percentageText;
  const ProjectCardWidget(
      {super.key,
      required this.mainImageUrl,
      required this.companyTitle,
      required this.date,
      required this.attachmentFileCount,
      required this.checklistText,
      required this.percent,
      required this.percentageText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              mainImageUrl,
              height: 162,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  companyTitle,
                  style: kLargeBold,
                ),
                const StacksAvatarWidget(
                    avatarBackground: kSecondaryClickButtonColor,
                    imageUrl1: 'lib/asset/images/profle.png',
                    imageUrl2: 'lib/asset/images/profle.png',
                    imageUrl3: 'lib/asset/images/profle.png')
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Image.asset(
                  'lib/asset/images/calender_icon.png',
                  height: 20,
                  width: 20,
                ),
                Text(date, style: kExtraSmalSemibold),
                const SizedBox(width: 16),
                Image.asset(
                  'lib/asset/images/attachment_icon.png',
                  height: 20,
                  width: 20,
                ),
                Text(
                  attachmentFileCount,
                  style: kExtraSmalSemibold,
                ),
                const SizedBox(width: 16),
                Image.asset(
                  'lib/asset/images/check_list_icon.png',
                  height: 20,
                  width: 20,
                ),
                Text(checklistText, style: kExtraSmalSemibold)
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: LinearPercentIndicator(
                lineHeight: 3,
                percent: percent,
                backgroundColor: kDisabledButtonColor,
                progressColor: kCircleCheckListColor,
                trailing: Text(
                  percentageText,
                  style: kExtraSmalSemibold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
