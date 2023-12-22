import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class MediumSecondaryButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const MediumSecondaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  State<MediumSecondaryButtonWidget> createState() =>
      _MediumSecondaryButtonWidgetState();
}

class _MediumSecondaryButtonWidgetState
    extends State<MediumSecondaryButtonWidget> {
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
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
