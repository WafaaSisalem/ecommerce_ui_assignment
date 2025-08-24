import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/freelancer_model.dart';
import 'package:flutter_application_2/widget/rating_widget.dart';

class FreelancerInfo extends StatelessWidget {
  const FreelancerInfo({super.key, required this.freelancer});
  final Freelancer freelancer;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: width / 2.5),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: width / 2,
            height: width / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(freelancer.services[0].image),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            right: -(width / 2.5),
            child: Container(
              width: width / 1.8,
              height: width / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 16,
                    color: Color(0xDDAE5F2).withOpacity(0.7),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(freelancer.image),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            freelancer.name,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,

                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            freelancer.major,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          Spacer(),
                          Text(
                            freelancer.services[0].details,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 10,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              RatingWidget(rate: freelancer.rate),
                              SizedBox(width: 5),
                              Expanded(
                                child: SizedBox(
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},

                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepPurpleAccent,
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Book Now',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
