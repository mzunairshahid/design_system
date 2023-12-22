import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class BigButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;
  final bool isDisabled;
  final Color normalColor;
  final Color hoverColor;
  final Color clickColor;
  final Color disableColor;
  final Color borderColor;

  const BigButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.normalColor,
    required this.hoverColor,
    required this.clickColor,
    required this.disableColor,
    required this.borderColor,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  State<BigButtonWidget> createState() => _BigButtonWidgetState();
}

class _BigButtonWidgetState extends State<BigButtonWidget> {
  Color _buttonColor = kPrimaryNormalButonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.isDisabled
          ? null
          : (_) {
              setState(() {
                _buttonColor = widget.normalColor;
              });
            },
      onTapUp: widget.isDisabled
          ? null
          : (_) {
              setState(() {
                _buttonColor = widget.hoverColor;
              });
              widget.onPressed();
            },
      child: MouseRegion(
        onEnter: widget.isDisabled
            ? null
            : (_) {
                setState(() {
                  _buttonColor = widget.clickColor;
                });
              },
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          decoration: BoxDecoration(
            color: widget.isDisabled ? widget.disableColor : _buttonColor,
            border: Border.all(width: 1, color: widget.borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: widget.isDisabled
                    ? kPrimaryTextButton
                    : kSecondaryTextButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
