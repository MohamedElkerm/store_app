import 'package:flutter/material.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({Key? key}) : super(key: key);
  static String id = 'update';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),

    );
  }
}
