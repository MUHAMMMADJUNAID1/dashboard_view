import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Text(
          'ProfileView',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
