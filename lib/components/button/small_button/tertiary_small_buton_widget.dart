import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SmallTertiaryButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;

  const SmallTertiaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  State<SmallTertiaryButtonWidget> createState() =>
      _SmallTertiaryButtonWidgetState();
}

class _SmallTertiaryButtonWidgetState extends State<SmallTertiaryButtonWidget> {
// Normal Color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
// Click Color
        });
      },
      onTapUp: (details) {
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
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
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
                style: kSecondaryButtonRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
