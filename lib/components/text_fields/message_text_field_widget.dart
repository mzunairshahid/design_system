import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class MessageInTextFieldWidget extends StatelessWidget {
  final Function addFiles;
  final String hintText;
  final Function(String)? onChange;
  final Function giftEmoji;
  final Function sticker;
  final Function emojies;

  const MessageInTextFieldWidget(
      {super.key,
      required this.addFiles,
      required this.hintText,
      this.onChange,
      required this.giftEmoji,
      required this.sticker,
      required this.emojies});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 54,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: kTextFieldInsideColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: kTextFieldBorderColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: TextField(
            onSubmitted: onChange,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: kSmallMedium,
              border: InputBorder.none,
              prefixIcon: IconButton(
                onPressed: addFiles(),
                icon: Image.asset(
                  'lib/asset/images/add_icon.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: giftEmoji(),
              icon: Image.asset(
                'lib/asset/images/gift_icon.png',
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: sticker(),
              icon: Image.asset(
                'lib/asset/images/sticker_icon.png',
                width: 20,
                height: 20,
              ),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: emojies(),
              icon: Image.asset(
                'lib/asset/images/smile_icon.png',
                width: 20,
                height: 20,
              ),
            ),
          ],
        )
      ],
    );
  }
}
