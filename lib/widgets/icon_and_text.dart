import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({super.key, required this.iconImg, required this.text});
  final IconData iconImg;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconImg),
        const SizedBox(height: 20),
        Text(text),
      ],
    );
  }
}
