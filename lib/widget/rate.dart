import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Rate(
          iconSize: 27,
          color: const Color(0xffD44445),
          allowHalf: true,
          allowClear: true,
          initialValue: 3.5,
          readOnly: false,
          onChange: (rating) {
            setState(() {
              rate = rating;
            });
          },
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '$rate',
          style: const TextStyle(
              fontFamily: 'Audiowide',
              fontWeight: FontWeight.bold,
              color: Color(0xff767676),
              fontSize: 14),
        ),
      ],
    );
  }
}
