import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class ToggleButtonWidget extends StatefulWidget {
  final bool isDisabled;

  const ToggleButtonWidget({
    Key? key,
    required this.isDisabled,
  }) : super(key: key);

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool isToggled = false;

  void _toggleSwitch(bool value) {
    setState(() {
      isToggled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isDisabled
          ? null
          : () => _toggleSwitch(
              !isToggled), // Disable onTap when isDisabled is true
      child: Container(
        width: 46,
        height: 24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: widget.isDisabled
                ? kToggleButtonDisableColor
                : isToggled
                    ? kToggleActiveColor
                    : kToggleInactiveColor),
        child: Align(
          alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(2.2),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryButtonTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
