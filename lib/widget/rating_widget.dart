import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rate});
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x14827BEB),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        children: [
          Image.asset('assets/images/star.png'),
          SizedBox(width: 4),
          Text(
            rate.toStringAsFixed(1),
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
