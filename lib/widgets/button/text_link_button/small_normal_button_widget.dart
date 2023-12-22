import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class SmallNormalLinkButtonWidget extends StatelessWidget {
  final Function onPress;
  final String tile;

  const SmallNormalLinkButtonWidget({
    super.key,
    required this.onPress,
    required this.tile,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Text(tile, style: kTextLinkButton),
    );
  }
}
