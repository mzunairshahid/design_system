import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SmallHoverLinkButtonWidget extends StatelessWidget {
  final Function onPress;
  final String title;

  const SmallHoverLinkButtonWidget({
    super.key,
    required this.onPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Text(title, style: kExtraSmalSemibold),
    );
  }
}
