import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/rating_widget.dart';

class TopRatedListItem extends StatelessWidget {
  const TopRatedListItem({
    super.key,
    required this.image,
    required this.name,
    required this.major,
    required this.rate,
  });
  final String image;
  final String name;
  final String major;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(image),
          ),
          Positioned(
            top: 62,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFE7EFFC),
                    offset: Offset(2, 2),
                    blurRadius: 16,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xB31D1F24),
                    ),
                  ),
                  Text(
                    major,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1F24),
                    ),
                  ),
                  SizedBox(height: 4),
                  RatingWidget(rate: rate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
