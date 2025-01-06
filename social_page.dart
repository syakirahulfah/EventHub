import 'package:flutter/material.dart';
import 'event8Detail_page.dart';
import 'event9Detail_page.dart';

class SocialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Events"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
      ),
      body: Container(
        color: Color(0xFF081033), // Background color
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEventCard(
              context,
              eventName: 'ENTREPRENEURSHIP CARNIVAL 3.0 FSKTM 2024',
              eventDate: '20/11/2024 - 21/11/2024',
              imagePath: 'assets/images/Event8.png',  // Replace with actual image path
              detailPage: Event8DetailPage(),
            ),
            _buildEventCard(
              context,
              eventName: 'ENTREPRENEURSHIP CARNIVAL 2.0 FSKTM 2023',
              eventDate: '22/11/2023 - 23/11/2023',
              imagePath: 'assets/images/Event9.png', // Replace with actual image path
              detailPage: Event9DetailPage(),
            ),
          ],
        ),
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
              Image.asset(imagePath, width: 60, height: 60), // Event image on the left
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
