import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/avatar/stacks_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/check_lists/green_check_list_widget.dart';

class WideProjectListWidget extends StatefulWidget {
  final String title;
  final String date;
  final String imageUrl;
  final String levelTitle;
  final String objective;
  final String status;

  final Color avatarBackgroung;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  const WideProjectListWidget({
    super.key,
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.levelTitle,
    required this.objective,
    required this.status,
    required this.avatarBackgroung,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
  });

  @override
  State<WideProjectListWidget> createState() => _WideProjectListWidgetState();
}

class _WideProjectListWidgetState extends State<WideProjectListWidget> {
  bool isSelectData = false;

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 668;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              GreenCheckListWidget(
                onPress: (onchecked) {
                  setState(() {
                    isSelectData = onchecked;
                  });
                },
              ),
              const SizedBox(width: 10),
              Text(widget.title,
                  style: isSelectData ? kMediumRegular : kSmallSemibold),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.date, style: kSmallMedium),
              const SizedBox(width: 10),
              Row(
                children: [
                  Image.asset(widget.imageUrl, height: 20, width: 20),
                  Text(widget.levelTitle, style: kSmallMedium),
                ],
              ),
              const SizedBox(width: 10),
              Row(
                children: [
                  Image.asset('lib/asset/images/objective_icon.png',
                      height: 20, width: 20),
                  Text(widget.objective, style: kSmallMedium),
                ],
              ),
              if (!isMobile(context)) ...[
                const SizedBox(width: 10),
                Text(widget.status, style: kSmallMedium),
              ],
              const SizedBox(width: 10),
              StacksAvatarWidget(
                  avatarBackground: widget.avatarBackgroung,
                  imageUrl1: widget.imageUrl1,
                  imageUrl2: widget.imageUrl2,
                  imageUrl3: widget.imageUrl3),
            ],
          ),
        ),
      ],
    );
  }
}
