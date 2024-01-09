import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class BigSecondaryButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const BigSecondaryButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  State<BigSecondaryButtonWidget> createState() =>
      _BigSecondaryButtonWidgetState();
}

class _BigSecondaryButtonWidgetState extends State<BigSecondaryButtonWidget> {
  Color _buttonColor = kSecondaryNormalButtonColor; // Normal Color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _buttonColor = kSecondaryClickButtonColor; // Click Color
        });
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = kSecondaryNormalButtonColor; // Normal Color
        });
        widget.onPressed();
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _buttonColor = kSecondaryHoverButtonColor; // Hover Color
          });
        },
        child: Container(
          height: 51,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          decoration: BoxDecoration(
            color: _buttonColor,
            borderRadius: BorderRadius.circular(8),
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
