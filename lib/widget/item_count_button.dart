import 'package:flutter/material.dart';

class ItemCountButton extends StatelessWidget {
  const ItemCountButton({super.key, required this.icon, this.onPress});
  final IconData icon;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 26,
        width: 26,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffD44445),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
      ),
      onTap: onPress,
    );
  }
}
