import 'package:flutter/material.dart';
import 'package:t_shirt_clone_store/views/store_page.dart';

void main() {
  runApp(const ShirtCloneStore());
}

class ShirtCloneStore extends StatelessWidget {
  const ShirtCloneStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}
