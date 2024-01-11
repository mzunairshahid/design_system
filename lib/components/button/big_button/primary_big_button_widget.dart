import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class BigPrimaryButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;
  final bool isDisabled; // New property to handle button state

  const BigPrimaryButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isDisabled = false, // Default is not disabled
  }) : super(key: key);

  @override
  State<BigPrimaryButtonWidget> createState() => _BigPrimaryButtonWidgetState();
}

class _BigPrimaryButtonWidgetState extends State<BigPrimaryButtonWidget> {
  Color _buttonColor = kPrimaryNormalButonColor; // Normal Color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isDisabled ? null : () => widget.onPressed(),
      onTapDown: (_) {
        if (!widget.isDisabled) {
          setState(() {
            _buttonColor = kPrimaryClickButtonColor; // Click Color
          });
        }
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = kPrimaryNormalButonColor; // Normal Color
        });
      },
      onTapCancel: () {
        setState(() {
          _buttonColor = kPrimaryNormalButonColor; // Normal Color
        });
      },
      child: MouseRegion(
        onEnter: (_) {
          if (!widget.isDisabled) {
            setState(() {
              _buttonColor = kPrimaryHoverButtonColor; // Hover Color
            });
          }
        },
        child: Container(
          height: 51,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          decoration: BoxDecoration(
            color: widget.isDisabled
                ? kDisabledButtonColor // Use disabled button color
                : _buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              widget.label,
              style: widget.isDisabled
                  ? kPrimaryDisablebutton // Adjust disabled text color
                  : kPrimarybuttonRegular,
            ),
          ),
        ),
      ),
    );
  }
}
