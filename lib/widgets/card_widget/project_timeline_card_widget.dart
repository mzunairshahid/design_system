import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/avatar/stacks_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/check_lists/green_check_list_widget.dart';

import '../../utilities/constant.dart';

class ProjectTimelineCardWidget extends StatelessWidget {
  final Color cardColor;
  final String title;
  final String obectiveText;
  final String attachementFiles;
  final String levelText;
  const ProjectTimelineCardWidget(
      {super.key,
      required this.cardColor,
      required this.title,
      required this.obectiveText,
      required this.attachementFiles,
      required this.levelText});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const StacksAvatarWidget(
                avatarBackground: kSecondaryClickButtonColor,
                imageUrl1: 'lib/asset/images/profle.png',
                imageUrl2: 'lib/asset/images/profle.png',
                imageUrl3: 'lib/asset/images/profle.png'),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kMediumLargeSemibold,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'lib/asset/images/objective_icon.png',
                        height: 20,
                        width: 20,
                      ),
                      Text(obectiveText, style: kExtraSmalSemibold),
                      const SizedBox(width: 16),
                      Image.asset(
                        'lib/asset/images/attachment_icon.png',
                        height: 20,
                        width: 20,
                      ),
                      Text(
                        attachementFiles,
                        style: kExtraSmalSemibold,
                      ),
                      const SizedBox(width: 16),
                      Image.asset(
                        'lib/asset/images/hard_level_flag.png',
                        height: 20,
                        width: 20,
                      ),
                      Text(levelText, style: kExtraSmalSemibold)
                    ],
                  ),
                ],
              ),
            ),
            GreenCheckListWidget(onPress: (checklistvalue) {})
          ],
        ),
      ),
    );
  }
}
