import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

import '../../utilities/constant.dart';

class MessageCountComponentWidget extends StatelessWidget {
  final String messagesCount;
  const MessageCountComponentWidget({super.key, required this.messagesCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21,
      width: 21,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kSuccessButtonTextColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Text(
        messagesCount,
        style: kPrimarybuttonRegular,
      ),
    );
  }
}
