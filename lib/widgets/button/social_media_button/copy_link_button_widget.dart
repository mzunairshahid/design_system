import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class CopyLinkButtonWidget extends StatelessWidget {
  final String title;
  final Function onPressed;

  const CopyLinkButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Color _buttonColor = kSecondaryNormalButtonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 29,
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
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
              height: 18,
              decoration: ShapeDecoration(
                color: kPrimaryButtonTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: _buttonColor,
                      image: const DecorationImage(
                        image: AssetImage(
                          'lib/asset/images/copy_link_icon.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: kSecondaryButtonRegular,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
