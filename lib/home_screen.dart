import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/freelancer_model.dart';
import 'package:flutter_application_2/models/service_model.dart';
import 'package:flutter_application_2/widget/freelancer_info_widget.dart';
import 'package:flutter_application_2/widget/section_widget.dart';
import 'package:flutter_application_2/widget/top_rated_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Image.asset('assets/images/logo.png'),
        actions: [
          buildNotificationActionItem(),
          SizedBox(width: 15),
          buildCartActionItem(),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 18),
              buildSearchbar(),
              SizedBox(height: 18),
              Image.asset(
                'assets/images/slider.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              SizedBox(height: 16),

              SectionsHeaderWidget(title: 'Top Rated FreeLancers'),
              SizedBox(height: 11),
              buildTopRatedList(),
              SectionsHeaderWidget(title: 'Top Services'),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FreelancerInfo(
                      freelancer: Freelancer(
                        services: [
                          ServiceModel(
                            image: 'assets/images/service1.png',
                            details:
                                'Doloribus saepe aut necessit qui non qui.',
                          ),
                        ],
                        image: 'assets/images/1.png',
                        name: 'Miss Azchary Williams',
                        major: 'Beautician',
                        rate: 4.9,
                      ),
                    ),
                    SizedBox(height: 26),
                    FreelancerInfo(
                      freelancer: Freelancer(
                        image: 'assets/images/1.png',
                        name: 'Miss Azchary Williams',
                        major: 'Beautician',
                        rate: 4.9,
                        services: [
                          ServiceModel(
                            image: 'assets/images/service2.png',
                            details:
                                'Doloribus saepe aut necessit qui non qui.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 26),
                    FreelancerInfo(
                      freelancer: Freelancer(
                        services: [
                          ServiceModel(
                            image: 'assets/images/service3.png',
                            details:
                                'Doloribus saepe aut necessit qui non qui.',
                          ),
                        ],
                        image: 'assets/images/1.png',
                        name: 'Miss Azchary Williams',
                        major: 'Beautician',
                        rate: 4.9,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCartActionItem() {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0x1F1E3672),

        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Image.asset('assets/images/cart.png')),
    );
  }

  Container buildNotificationActionItem() {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0x051E3672),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Image.asset('assets/images/notification.png')),
    );
  }

  Padding buildTopRatedList() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: 180,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            final imageNumber = index + 2;
            return TopRatedListItem(
              freelancer: Freelancer(
                services: [
                  ServiceModel(
                    image: 'assets/images/service1.png',
                    details: 'Doloribus saepe aut necessit qui non qui.',
                  ),
                ],
                image: 'assets/images/$imageNumber.png',
                name: 'John Doe',
                major: 'Web Developer',
                rate: 4.5,
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 25),
        ),
      ),
    );
  }

  Padding buildSearchbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                hintStyle: TextStyle(
                  color: Color(0xCC232939),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 10),
                  child: Icon(Icons.search, color: Colors.black),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Color(0xFFB2BACD), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Color(0xFFB2BACD), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Color(0xFF1E3672), width: 2),
                ),
              ),
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(width: 12),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFB2BACD), width: 1),
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/sort.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
