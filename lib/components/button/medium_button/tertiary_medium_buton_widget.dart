import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class MediumTertiaryButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const MediumTertiaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  _MediumTertiaryButtonWidgetState createState() =>
      _MediumTertiaryButtonWidgetState();
}

class _MediumTertiaryButtonWidgetState
    extends State<MediumTertiaryButtonWidget> {
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
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
