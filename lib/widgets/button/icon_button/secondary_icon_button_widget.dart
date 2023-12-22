import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SecondaryIconButtonWidget extends StatefulWidget {
  final String label;
  final Function onPressed;

  const SecondaryIconButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  State<SecondaryIconButtonWidget> createState() =>
      _SecondaryIconButtonWidgetState();
}

class _SecondaryIconButtonWidgetState extends State<SecondaryIconButtonWidget> {
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
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: _buttonColor,
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
                  color: _buttonColor,
                  image: const DecorationImage(
                    image: AssetImage(
                      'lib/asset/images/chat_white.png',
                    ),
                    colorFilter: ColorFilter.mode(
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
