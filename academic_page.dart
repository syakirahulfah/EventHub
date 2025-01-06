import 'package:flutter/material.dart';
import 'event6Detail_page.dart';
import 'event7Detail_page.dart';
import 'event10Detail_page.dart';

class AcademicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic Events"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
      ),
      body: Container(
        color: Color(0xFF081033), // Background color
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEventCard(
              context,
              eventName: 'DEAN AWARD CERMONY',
              eventDate: '20/6/2024',
              imagePath: 'assets/images/Event6.png',  // Replace with actual image path
              detailPage: Event6DetailPage(), // Replace with appropriate detail page
            ),
            _buildEventCard(
              context,
              eventName: 'RECRUITMENT OF NEW ITC MEMBERS 2024/2025',
              eventDate: '-',
              imagePath: 'assets/images/Event7.png', // Replace with actual image path
              detailPage: Event7DetailPage(), // Replace with appropriate detail page
            ),
            _buildEventCard(
              context,
              eventName: 'A DAY AT KUALA LUMPUR FOR\n'
              'INTERNATIONAL BOOKFAIR & GRADUAN ASPIRE 2024',
              eventDate: '25/5/2024',
              imagePath: 'assets/images/Event10.png', // Replace with actual image path
              detailPage: Event10DetailPage(), // Replace with appropriate detail page
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
