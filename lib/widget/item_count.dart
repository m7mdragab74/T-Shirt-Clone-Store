import 'package:flutter/material.dart';
import 'package:t_shirt_clone_store/widget/item_count_button.dart';

class ItemCount extends StatefulWidget {
  const ItemCount({super.key});

  @override
  State<ItemCount> createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 113,
      decoration: BoxDecoration(
          color: const Color(0xff272727),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ItemCountButton(
            icon: Icons.remove,
            onPress: () {
              setState(() {
                item--;
              });
            },
          ),
          Text(
            item.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Audiowide',
              fontWeight: FontWeight.bold,
            ),
          ),
          ItemCountButton(
            icon: Icons.add,
            onPress: () {
              setState(() {
                item++;
              });
            },
          )
        ],
      ),
    );
  }
}
