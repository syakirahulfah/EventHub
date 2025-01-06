import 'package:flutter/material.dart';
import 'event5Detail_page.dart';
import 'information1Detail_page.dart';

class CareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Career Events"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
      ),
      body: Container(
        color: Color(0xFF081033), // Background color
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEventCard(
              context,
              eventName: 'CELCOMDIGI UNIVERSITY INVANSION : S.A.F.E INTERNET CODE',
              eventDate: '25/6/2024',
              imagePath: 'assets/images/Event5.png',  // Replace with actual image path
              detailPage: Event5DetailPage(),
            ),
            _buildEventCard(
              context,
              eventName: 'FSKTM ACADEMIC AND CAREER ADVISORY PROGRAM 2023:\n'
              'TOGETHERNESS CATALYSTS EXCELLENCE',
              eventDate: '30/11/2023',
              imagePath: 'assets/images/Information1.png', // Replace with actual image path
              detailPage: Information1DetailPage(),
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
