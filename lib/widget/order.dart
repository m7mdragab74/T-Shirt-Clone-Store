import 'package:flutter/material.dart';
import 'package:t_shirt_clone_store/widget/text.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 90,
      decoration: BoxDecoration(
        color: const Color(0xffD44445),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 33,
            ),
            SizedBox(
              height: 4,
            ),
            TextTitle(color: Colors.white, size: 20, title: '\$89')
          ],
        ),
      ),
    );
  }
}
