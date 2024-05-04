import 'package:flutter/material.dart';

class DocView extends StatelessWidget {
  const DocView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text(
          'DocView',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
