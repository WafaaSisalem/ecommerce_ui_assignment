import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/freelancer_model.dart';
import 'package:flutter_application_2/widget/rating_widget.dart';

class TopRatedListItem extends StatelessWidget {
  const TopRatedListItem({super.key, required this.freelancer});
  final Freelancer freelancer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(freelancer.image),
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
                    freelancer.name,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xB31D1F24),
                    ),
                  ),
                  Text(
                    freelancer.major,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1F24),
                    ),
                  ),
                  SizedBox(height: 4),
                  RatingWidget(rate: freelancer.rate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
