import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class DrawerListTile extends StatefulWidget {
  final String title;
  final String imageURL;
  final String tappedImageURL;
  final Function onPress;

  const DrawerListTile({
    super.key,
    required this.title,
    required this.imageURL,
    required this.tappedImageURL,
    required this.onPress,
  });

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        widget.onPress();
      },
      child: Container(
        height: 45,
        padding: const EdgeInsets.only(top: 12, left: 12, right: 8, bottom: 12),
        decoration: ShapeDecoration(
          color: isTapped ? kPrimaryButtonTextColor : kAppBarColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              isTapped ? widget.tappedImageURL : widget.imageURL,
              height: 16.67,
              width: 16.67,
            ),
            const SizedBox(width: 16),
            Text(widget.title,
                style: isTapped ? kDrawerTextActive : kDrawerTextInactive),
          ],
        ),
      ),
    );
  }
}
