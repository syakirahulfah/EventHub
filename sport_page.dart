import 'package:flutter/material.dart';
import 'event3Detail_page.dart'; // Replace this with other detail pages as needed
import 'event2Detail_page.dart';
import 'event4Detail_page.dart';

class SportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sport Events"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
      ),
      body: Container(
        color: Color(0xFF081033), // Background color
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEventCard(
              context,
              eventName: 'INTERFACULTY SPORTS ATHLETE SEARCH ANNOUNCEMENT',
              eventDate: '-',
              imagePath: 'assets/images/Event3.png', // Replace with actual image path
              detailPage: Event3DetailPage(), // Replace with appropriate detail page
            ),
            _buildEventCard(
              context,
              eventName: '2D NIGHT RUN',
              eventDate: '5/12/2023',
              imagePath: 'assets/images/Event2.png', // Replace with actual image path
              detailPage: Event2DetailPage(), // Replace with appropriate detail page
            ),
            _buildEventCard(
              context,
              eventName: 'FSKTM SPORTS CUP CHAMPIONSHIP',
              eventDate: '22/6/2024',
              imagePath: 'assets/images/Event4.png', // Replace with actual image path
              detailPage: Event4DetailPage(), // Replace with appropriate detail page
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
