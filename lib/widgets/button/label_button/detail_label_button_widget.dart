import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class PickUpLabelButtonWidget extends StatelessWidget {
  const PickUpLabelButtonWidget({
    super.key,
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
            color: kDetailButtonBackgroungColor,
          ),
          child: const Text('Pick up', style: kDetailLabelButton),
        ),
      ],
    );
  }
}
