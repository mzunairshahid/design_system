import 'package:flutter/material.dart';
import '../../utilities/constant.dart';
import '../tab_block/tab_line_widget.dart';

class ForumHeadingWidget extends StatelessWidget {
  final String title;
  final String tabBlockText;
  final Function onPress;

  const ForumHeadingWidget(
      {super.key,
      required this.title,
      required this.tabBlockText,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kMediumLargeSemibold,
        ),
        TabLineWidget(
          title: tabBlockText,
          onPress: onPress,
          isSelected: false,
        )
      ],
    );
  }
}
