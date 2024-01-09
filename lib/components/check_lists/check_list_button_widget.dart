import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class ChecklistButtonWidget extends StatefulWidget {
  const ChecklistButtonWidget({super.key});

  @override
  State<ChecklistButtonWidget> createState() => _ChecklistButtonWidgetState();
}

class _ChecklistButtonWidgetState extends State<ChecklistButtonWidget> {
  bool checkListValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Checkbox(
        value: checkListValue,
        onChanged: (value) {
          setState(() {
            checkListValue = value!;
          });
        },
        checkColor: kPrimaryButtonTextColor,
        activeColor: kPrimaryNormalButonColor,
      ),
    );
  }
}
