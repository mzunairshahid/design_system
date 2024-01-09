import 'package:flutter/material.dart';
import 'package:ouditor_design_system/components/check_lists/green_check_list_widget.dart';
import '../../utilities/constant.dart';

class VideoMaterialCardWidget extends StatelessWidget {
  final String srNo;
  final String title;
  final String minutes;
  const VideoMaterialCardWidget(
      {super.key,
      required this.srNo,
      required this.title,
      required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              srNo,
              style: kMediumBold,
            ),
            const SizedBox(width: 3),
            Expanded(
              child: Text(
                title,
                style: kMediumBold,
              ),
            ),
            GreenCheckListWidget(
              onPress: (checkListValue) {},
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'lib/asset/images/time_circle_icon.png',
              height: 15,
              width: 15,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              minutes,
              style: kCardSubtitle,
            )
          ],
        )
      ],
    );
  }
}
