import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class NormalStateLabelWidget extends StatelessWidget {
  final String labelText;
  final Color backgroundColor;
  const NormalStateLabelWidget({
    super.key,
    required this.labelText,
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
          child: Text(
            labelText,
            style: kNormalStateLabelButton,
          ),
        ),
      ],
    );
  }
}
