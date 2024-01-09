import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class BigTertiaryButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;

  const BigTertiaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  State<BigTertiaryButtonWidget> createState() =>
      _BigTertiaryButtonWidgetState();
}

class _BigTertiaryButtonWidgetState extends State<BigTertiaryButtonWidget> {
// Normal Color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
// Click Color
        });
      },
      onTapUp: (_) {
        setState(() {
// Normal Color
        });
        widget.onPressed();
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
// Hover Color
          });
        },
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          decoration: ShapeDecoration(
            color: kTertiaryDisableBorderColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: kTertiaryBorderColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: kSmallSemibold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
