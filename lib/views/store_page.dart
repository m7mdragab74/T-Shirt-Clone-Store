import 'package:flutter/material.dart';
import 'package:t_shirt_clone_store/widget/bottom_size.dart';
import 'package:t_shirt_clone_store/widget/image.dart';
import 'package:t_shirt_clone_store/widget/item_count.dart';
import 'package:t_shirt_clone_store/widget/order.dart';
import 'package:t_shirt_clone_store/widget/rate.dart';
import 'package:t_shirt_clone_store/widget/text.dart';

enum Size {
  small,
  large,
  medium,
  xl,
  xxl,
}

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  Size? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 33,
          ),
          onPressed: () {},
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 33,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 33,
          ),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: const Color(0xff191919),
      ),
      backgroundColor: const Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          right: 5,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const ImageView(),
                const SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    SizedBottom(
                      size: 's',
                      color: selectedSize == Size.small
                          ? const Color(0xffD44445)
                          : const Color(0xff272727),
                      onPress: () {
                        setState(() {
                          selectedSize = Size.small;
                        });
                      },
                    ),
                    SizedBottom(
                      size: 'L',
                      color: selectedSize == Size.large
                          ? const Color(0xffD44445)
                          : const Color(0xff272727),
                      onPress: () {
                        setState(() {
                          selectedSize = Size.large;
                        });
                      },
                    ),
                    SizedBottom(
                      size: 'M',
                      color: selectedSize == Size.medium
                          ? const Color(0xffD44445)
                          : const Color(0xff272727),
                      onPress: () {
                        setState(() {
                          selectedSize = Size.medium;
                        });
                      },
                    ),
                    SizedBottom(
                      size: 'XL',
                      color: selectedSize == Size.xl
                          ? const Color(0xffD44445)
                          : const Color(0xff272727),
                      onPress: () {
                        setState(() {
                          selectedSize = Size.xl;
                        });
                      },
                    ),
                    SizedBottom(
                      size: '2XL',
                      color: selectedSize == Size.xxl
                          ? const Color(0xffD44445)
                          : const Color(0xff272727),
                      onPress: () {
                        setState(() {
                          selectedSize = Size.xxl;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 12,
                left: 23,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitle(
                    color: Colors.white,
                    size: 30,
                    title: 'Belgium EURO',
                  ),
                  TextTitle(
                    color: Color(0xff767676),
                    size: 15,
                    title: '20/ 21 Home by Adidas',
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Rating(),
                      SizedBox(
                        width: 90,
                      ),
                      ItemCount(),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextTitle(
                              color: Color(0xff767676),
                              size: 15,
                              title: 'Details'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              TextTitle(
                                  color: Colors.white,
                                  size: 14,
                                  title: 'Material: '),
                              TextTitle(
                                  color: Color(0xff767676),
                                  size: 14,
                                  title: 'Polyester')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              TextTitle(
                                  color: Colors.white,
                                  size: 14,
                                  title: 'Shipping: '),
                              TextTitle(
                                  color: Color(0xff767676),
                                  size: 14,
                                  title: 'In 5 to 6 Days')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              TextTitle(
                                  color: Colors.white,
                                  size: 14,
                                  title: 'Returns: '),
                              TextTitle(
                                  color: Color(0xff767676),
                                  size: 14,
                                  title: 'Within 20 Days 20 Day')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Order()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
