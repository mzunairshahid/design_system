import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class RadioButtonWidget extends StatefulWidget {
  final bool isSelected;

  const RadioButtonWidget({
    super.key,
    required this.isSelected,
  });

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: SizedBox(
        width: 18,
        height: 18,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: ShapeDecoration(
                  color: _isSelected
                      ? kPrimaryNormalButonColor
                      : kRadioBackgroundColor,
                  shape: CircleBorder(
                      side: BorderSide(
                          width: 1,
                          color: _isSelected
                              ? kPrimaryNormalButonColor
                              : kRadioButtonBorderColor)),
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 5,
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: _isSelected
                      ? kPrimaryButtonTextColor
                      : kRadioBackgroundColor, //Colors.transparent,
                  shape: const CircleBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
