import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class TitleBar extends StatelessWidget {
  final String title;
  TitleBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            IconlyBold.arrowRightSquare,
            size: 33,
          ),
        ),
      ],
    );
  }
}
