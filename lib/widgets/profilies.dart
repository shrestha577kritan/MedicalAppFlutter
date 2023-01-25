import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.green.shade700,
      radius: 30,
      child: Icon(
        Icons.add,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
