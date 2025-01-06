import 'package:flutter/material.dart';
import 'sport_page.dart';
import 'academic_page.dart';
import 'career_page.dart';
import 'social_page.dart';
import 'allEvent_page.dart';
import 'splash_screen.dart';
import 'event3Detail_page.dart';
import 'event5Detail_page.dart';
import 'event7Detail_page.dart';
import 'event8Detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF081033),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[800],
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.logout, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCategoryItem('Sport', 'assets/images/Sport.png', context),
                    SizedBox(width: 29),
                    _buildCategoryItem('Academic', 'assets/images/Academic.png', context),
                    SizedBox(width: 29),
                    _buildCategoryItem('Career', 'assets/images/Career.png', context),
                    SizedBox(width: 29),
                    _buildCategoryItem('Social', 'assets/images/Social.png', context),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView(
                      children: [
                        Image.asset('assets/images/Information1.png', fit: BoxFit.cover),
                        Image.asset('assets/images/Information2.png', fit: BoxFit.cover),
                        Image.asset('assets/images/Information3.png', fit: BoxFit.cover),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Events", style: TextStyle(color: Colors.white, fontSize: 20)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AllEventPage()),
                      );
                    },
                    child: Text('View All', style: TextStyle(color: Colors.blueAccent)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildEventCard(
                    context,
                    eventName: 'ENTREPRENEURSHIP CARNIVAL 3.0 FSKTM 2024',
                    eventDate: '20/11/2024 - 21/11/2024',
                    imagePath: 'assets/images/Event8.png',
                    detailPage: Event8DetailPage(), // Replace with actual detail page
                  ),
                  _buildEventCard(
                    context,
                    eventName: 'RECRUITMENT OF NEW ITC MEMBERS 2024/2025',
                    eventDate: '-',
                    imagePath: 'assets/images/Event7.png',
                    detailPage: Event7DetailPage(), // Replace with actual detail page
                  ),
                  _buildEventCard(
                    context,
                    eventName: 'INTERFACULTY SPORTS ATHLETE SEARCH ANNOUNCEMENT',
                    eventDate: '-',
                    imagePath: 'assets/images/Event3.png',
                    detailPage: Event3DetailPage(), // Replace with actual detail page
                  ),
                  _buildEventCard(
                    context,
                    eventName: 'CELCOMDIGI UNIVERSITY INVANSION : S.A.F.E INTERNET CODE',
                    eventDate: '25/6/2024',
                    imagePath: 'assets/images/Event5.png',
                    detailPage: Event5DetailPage(), // Replace with actual detail page
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String label, String iconPath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == 'Sport') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SportPage()));
        } else if (label == 'Academic') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AcademicPage()));
        } else if (label == 'Career') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CareerPage()));
        } else if (label == 'Social') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SocialPage()));
        }
      },
      child: Column(
        children: [
          Image.asset(
            iconPath,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(
    BuildContext context, {
    required String eventName,
    required String eventDate,
    required String imagePath,
    required Widget detailPage,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailPage),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image.asset(imagePath, width: 60, height: 60),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    eventDate,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
