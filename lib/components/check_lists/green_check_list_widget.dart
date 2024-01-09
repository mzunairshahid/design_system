import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class GreenCheckListWidget extends StatefulWidget {
  final Function onPress;
  const GreenCheckListWidget({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  State<GreenCheckListWidget> createState() => _GreenCheckListWidgetState();
}

class _GreenCheckListWidgetState extends State<GreenCheckListWidget> {
  bool checkListValue = false;
  Color containerColor = kPrimaryButtonTextColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          checkListValue = !checkListValue;
          containerColor =
              checkListValue ? kCircleCheckListColor : kPrimaryButtonTextColor;
          widget.onPress(checkListValue);
        });
      },
      child: Container(
        height: 22,
        width: 22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kDisabledButtonColor,
            width: 2,
          ),
          color: containerColor,
        ),
        child: Center(
          child: checkListValue
              ? const Icon(
                  Icons.check,
                  size: 16,
                  color: kPrimaryButtonTextColor,
                )
              : Container(),
        ),
      ),
    );
  }
}
