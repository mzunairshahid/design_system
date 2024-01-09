import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class PendingLabelButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const PendingLabelButtonWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: backgroundColor,
          ),
          child: Text(text, style: kPendingLabelButton),
        ),
      ],
    );
  }
}
