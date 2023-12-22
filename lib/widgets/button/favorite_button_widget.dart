import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget({super.key});

  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: isFavorite
            ? const Icon(
                Icons.star,
                color: kFavoriteButtonColor,
              )
            : const Icon(Icons.star_border),
        iconSize: 18,
        onPressed: _toggleFavorite);
  }
}
