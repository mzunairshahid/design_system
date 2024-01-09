import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class UpwardLableWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String imageUrl;
  const UpwardLableWidget({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: kLableUpward),
          const SizedBox(width: 2),
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
        ],
      ),
    );
  }
}
