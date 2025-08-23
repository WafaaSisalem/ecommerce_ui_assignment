import 'package:flutter/material.dart';

class SectionsHeaderWidget extends StatelessWidget {
  final String title;
  const SectionsHeaderWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16),
          height: 38,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFFC2D7F2), Colors.white]),
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.only(right: 16)),
          onPressed: () {},
          child: Text(
            'view all',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
