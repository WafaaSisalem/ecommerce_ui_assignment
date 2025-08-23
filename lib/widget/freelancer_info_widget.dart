import 'package:flutter/material.dart';

class FreelancerInfo extends StatelessWidget {
  const FreelancerInfo({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 197,
            height: 154,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            right: -150,
            child: Container(
              width: 216,
              height: 123,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
