import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class PrimaryIconButtonWidget extends StatefulWidget {
  final String label;
  final String imageUrl;
  final Function onPressed;
  final bool isDisabled;
  const PrimaryIconButtonWidget({
    super.key,
    required this.label,
    required this.imageUrl,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  PrimaryIconButtonWidgetState createState() => PrimaryIconButtonWidgetState();
}

class PrimaryIconButtonWidgetState extends State<PrimaryIconButtonWidget> {
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
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: widget.isDisabled
                ? kDisabledButtonColor // Use disabled button color
                : _buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 13.33,
                height: 13.33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.label,
                    style: widget.isDisabled
                        ? kPrimaryDisablebutton // Adjust disabled text color
                        : kPrimarybuttonRegular,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
