import 'package:flutter/material.dart';

class SizedBottom extends StatelessWidget {
  const SizedBottom(
      {super.key, required this.size, required this.color, this.onPress});
  final String size;
  final Color color;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        width: 45,
        margin: const EdgeInsets.all(15),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(6), color: color),
        child: Center(
          child: Text(
            size,
            style: const TextStyle(
                fontFamily: 'Audiowide',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
