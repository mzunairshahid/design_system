import 'package:flutter/material.dart';
import '../utilities/color_constant.dart';
import '../utilities/constant.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String logoUrl;
  final String pageTitle;
  final IconData icon;
  final Function onPressed;
  const AppBarWidget(
      {super.key,
      required this.logoUrl,
      required this.pageTitle,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logoUrl, color: kAppBarColor),
          const SizedBox(width: 10),
          Text(pageTitle, style: kLargeSemibold),
        ],
      ),
      actions: [
        IconButton(
          onPressed: onPressed(),
          icon: Icon(icon, color: kAppBarColor),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
