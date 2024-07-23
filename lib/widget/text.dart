import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({
    super.key,
    required this.color,
    required this.size,
    required this.title,
  });
  final Color color;
  final double size;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Audiowide',
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}
