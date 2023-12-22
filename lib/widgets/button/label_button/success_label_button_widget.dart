import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SuccessLabelButtonWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const SuccessLabelButtonWidget({
    super.key,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0), color: backgroundColor),
          child: Text(
            title,
            style: kSuccessLabelButton,
          ),
        ),
      ],
    );
  }
}
