import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class UpwardPolygonLabelWidget extends StatelessWidget {
  final String title;
  final Color backgroungColour;
  final String imageUrl;
  const UpwardPolygonLabelWidget({
    super.key,
    required this.title,
    required this.backgroungColour,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: backgroungColour,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Text(title, style: kLableUpward),
        ],
      ),
    );
  }
}
