import 'package:flutter/material.dart';

class MapsView extends StatelessWidget {
  const MapsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text(
          'MapView',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
