import 'package:flutter/material.dart';

class TapableItems extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;
  const TapableItems({super.key, required this.imageUrl, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Image.asset(imageUrl, width: 450,)),
    );
  }
}
