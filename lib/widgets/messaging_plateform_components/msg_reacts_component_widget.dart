import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/text_const_color.dart';

import '../../utilities/color_constant.dart';

class MsgReactsComponentWidget extends StatelessWidget {
  const MsgReactsComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 28,
      padding: const EdgeInsets.all(6),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kPrimaryButtonTextColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Center(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset(
                  'lib/asset/images/reply_icon.png',
                  height: 20,
                  width: 20,
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Image.asset(
                  'lib/asset/images/smile_icon.png',
                  height: 20,
                  width: 20,
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Image.asset(
                  'lib/asset/images/star_icon.png',
                  height: 20,
                  width: 20,
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Image.asset(
                  'lib/asset/images/hard_level_flag.png',
                  color: kTextHeadingColor4,
                  height: 20,
                  width: 20,
                ),
                onTap: () {},
              )
            ]),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.star_outlined,
        //       size: 20,
        //     )),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.star_outlined,
        //       size: 20,
        //     ))
      ),
    );
  }
}
