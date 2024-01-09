import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class TertiaryIconButtonWidget extends StatefulWidget {
  final String label;
  final String iconUrl;
  final Function onPressed;

  const TertiaryIconButtonWidget(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.iconUrl});

  @override
  State<TertiaryIconButtonWidget> createState() =>
      _TertiaryIconButtonWidgetState();
}

class _TertiaryIconButtonWidgetState extends State<TertiaryIconButtonWidget> {
  Color _buttonColor = kSecondaryClickButtonColor; // Normal Color

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
          _buttonColor = kSecondaryClickButtonColor; // Normal Color
        });
        widget.onPressed();
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _buttonColor = kSecondaryClickButtonColor; // Hover Color
          });
        },
        child: Container(
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: ShapeDecoration(
            color: _buttonColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: kTertiaryBorderColor),
              borderRadius: BorderRadius.circular(8),
            ),
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
                  color: _buttonColor,
                  image: DecorationImage(
                    image: AssetImage(
                      widget.iconUrl,
                    ),
                    colorFilter: const ColorFilter.mode(
                        kPrimaryNormalButonColor, BlendMode.modulate),
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
                    style: kSecondaryButtonRegular,
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
