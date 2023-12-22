import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

import '../../utilities/constant.dart';

class SettingCardWidget extends StatefulWidget {
  final String iconUrl;
  final String text;
  final Function onPress;
  const SettingCardWidget(
      {super.key,
      required this.iconUrl,
      required this.text,
      required this.onPress});

  @override
  State<SettingCardWidget> createState() => _SettingCardWidgetState();
}

class _SettingCardWidgetState extends State<SettingCardWidget> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        widget.onPress();
      },
      child: Container(
        height: 49,
        decoration: ShapeDecoration(
          color: isTapped ? kNormalStateButtonBackgroundColor : null,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: ListTile(
          title: Text(widget.text, style: kSmallMedium),
          leading: Image.asset(
            widget.iconUrl,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
