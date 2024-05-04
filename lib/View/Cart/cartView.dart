import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text(
          "CartView",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
