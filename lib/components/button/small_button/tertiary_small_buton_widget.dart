import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SmallTertiaryButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;
  final bool isDisabled;

  const SmallTertiaryButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  State<SmallTertiaryButtonWidget> createState() =>
      _SmallTertiaryButtonWidgetState();
}

class _SmallTertiaryButtonWidgetState extends State<SmallTertiaryButtonWidget> {
  Color _buttonColor = kSecondaryNormalButtonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isDisabled ? null : () => widget.onPressed(),
      onTapDown: (_) {
        if (!widget.isDisabled) {
          setState(() {
            _buttonColor = kSecondaryClickButtonColor; // Click Color
          });
        }
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = kSecondaryNormalButtonColor; // Normal Color
        });
        widget.onPressed();
      },
      child: MouseRegion(
        onEnter: (_) {
          if (!widget.isDisabled) {
            setState(() {
              _buttonColor = kSecondaryHoverButtonColor; // Hover Color
            });
          }
        },
        child: Container(
          height: 34,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          decoration: ShapeDecoration(
            color: widget.isDisabled
                ? kDisabledButtonColor // Use disabled button color
                : _buttonColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1,
                  color: widget.isDisabled
                      ? kTertiaryDisableBorderColor
                      : kTertiaryBorderColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: widget.isDisabled
                    ? kPrimaryDisablebutton
                    : kSecondaryButtonRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
