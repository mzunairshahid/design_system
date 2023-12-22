import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SmallPrimaryButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const SmallPrimaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  _SmallPrimaryButtonWidgetState createState() =>
      _SmallPrimaryButtonWidgetState();
}

class _SmallPrimaryButtonWidgetState extends State<SmallPrimaryButtonWidget> {
  Color _buttonColor = kPrimaryNormalButonColor; // Normal Color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _buttonColor = kPrimaryClickButtonColor; // Click Color
        });
      },
      onTapUp: (details) {
        setState(() {
          _buttonColor = kPrimaryNormalButonColor; // Normal Color
        });
        widget.onPressed();
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _buttonColor = kPrimaryHoverButtonColor; // Hover Color
          });
        },
        child: Container(
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: _buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: kPrimarybuttonRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
