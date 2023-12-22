import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

import '../../utilities/constant.dart';

class DownloadMsgFileWidget extends StatelessWidget {
  final String pdfImage;
  final String title;
  final String subtitle;

  const DownloadMsgFileWidget(
      {super.key,
      required this.pdfImage,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Card(
        child: ListTile(
          leading: Image.asset(
            pdfImage,
            height: 42,
            width: 32.308,
          ),
          title: Text(
            title,
            style: kSmallBold,
          ),
          subtitle: Text(
            subtitle,
            style: kCardSubtitle,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.file_download_outlined,
              color: kPrimaryHoverButtonColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
