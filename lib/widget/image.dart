import 'package:flutter/material.dart';
import 'package:t_shirt_clone_store/widget/build_dot.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: 330,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/belgium-home-shirt-2019-21.png',
            width: 350,
            height: 310,
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildDot(
                color: Color(0xffD44445),
              ),
              BuildDot(
                color: Colors.grey,
              ),
              BuildDot(
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
