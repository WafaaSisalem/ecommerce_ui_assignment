import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Image.asset('assets/images/logo.png'),
        actions: [
          buildNotificationActionItem(),
          SizedBox(width: 15),
          buildCartActionItem(),
          SizedBox(width: 15),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18),
            buildSearchbar(),
            SizedBox(height: 18),
            Image.asset('assets/images/slider.png', fit: BoxFit.cover),
            SizedBox(height: 16),

            buildSectionsHeader(title: 'Top Rated FreeLancers'),
            SizedBox(height: 11),
            buildTopRatedList(),
            buildSectionsHeader(title: 'Top Services'),
          ],
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
            return buildTopRatedListItem(imageNumber);
          },
          separatorBuilder: (context, index) => SizedBox(width: 5),
        ),
      ),
    );
  }

  SizedBox buildTopRatedListItem(int imageNumber) {
    return SizedBox(
      width: 100,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset('assets/images/$imageNumber.png'),
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
                    'Wade Warren',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xB31D1F24),
                    ),
                  ),
                  Text(
                    'Beautician',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1F24),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
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
                          '4.9',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildSectionsHeader({required String title}) {
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
