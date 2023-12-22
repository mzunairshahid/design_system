import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/check_lists/green_check_list_widget.dart';

class TaskCardWidget extends StatelessWidget {
  final String uppertext;
  final String mainTitle;
  final String imageUrl;
  final String day;
  final String objectiveText;
  final String attachmentText;
  final String levelText;
  const TaskCardWidget(
      {super.key,
      required this.uppertext,
      required this.mainTitle,
      required this.imageUrl,
      required this.day,
      required this.objectiveText,
      required this.attachmentText,
      required this.levelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Center(child: GreenCheckListWidget(onPress: (checkListValue) {})),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(uppertext, style: kCardSubtitle),
              const SizedBox(height: 4),
              Text(mainTitle, style: kMediumLargeSemibold),
              Row(
                children: [
                  Image.asset(
                    'lib/asset/images/calender_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  Text(day, style: kExtraSmalSemibold),
                  const SizedBox(width: 16),
                  Image.asset(
                    'lib/asset/images/objective_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  Text(objectiveText, style: kExtraSmalSemibold),
                  const SizedBox(width: 16),
                  Image.asset(
                    'lib/asset/images/attachment_icon.png',
                    height: 20,
                    width: 20,
                  ),
                  Text(attachmentText, style: kExtraSmalSemibold),
                  const SizedBox(width: 16),
                  Image.asset(
                    'lib/asset/images/hard_level_flag.png',
                    height: 20,
                    width: 20,
                  ),
                  Text(levelText, style: kExtraSmalSemibold)
                ],
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            imageUrl,
            height: 80,
            width: 80,
          )
        ],
      ),
    );
  }
}
