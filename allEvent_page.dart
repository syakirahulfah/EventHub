import 'package:flutter/material.dart';

class AllEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Events"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
      ),
      body: Container(
        color: Color(0xFF081033), // Background color
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildEventCard(
              eventName: 'ENTREPRENEURSHIP CARNIVAL 3.0 FSKTM 2024',
              eventDate: '20/11/2024 - 21/11/2024',
              imagePath: 'assets/images/Event8.png',  // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'RECRUITMENT OF NEW ITC MEMBERS 2024/2025',
              eventDate: '-',
              imagePath: 'assets/images/Event7.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'INTERFACULTY SPORTS ATHLETE SEARCH ANNOUNCEMENT',
              eventDate: '-',
              imagePath: 'assets/images/Event3.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'CELCOMDIGI UNIVERSITY INVANSION : S.A.F.E INTERNET CODE',
              eventDate: '25/6/2024',
              imagePath: 'assets/images/Event5.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'FSKTM SPORTS CUP CHAMPIONSHIP',
              eventDate: '22/6/2024',
              imagePath: 'assets/images/Event4.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'DEAN AWARD CEREMONY',
              eventDate: '20/6/2024',
              imagePath: 'assets/images/Event6.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'A DAY AT KUALA LUMPUR FOR\n'
              'INTERNATIONAL BOOKFAIR & GRADUAN ASPIRE 2024',
              eventDate: '25/5/2024',
              imagePath: 'assets/images/Event10.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: '2D NIGHT RUN',
              eventDate: '5/12/2023',
              imagePath: 'assets/images/Event2.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'FSKTM ACADEMIC AND CAREER ADVISORY PROGRAM 2023:\n'
              'TOGETHERNESS CATALYSTS EXCELLENCE',
              eventDate: '30/11/2023',
              imagePath: 'assets/images/Information1.png', // Replace with actual image path
            ),
            _buildEventCard(
              eventName: 'ENTREPRENEURSHIP CARNIVAL 2.0 FSKTM 2023',
              eventDate: '22/11/2023 - 23/11/2023',
              imagePath: 'assets/images/Event9.png', // Replace with actual image path
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard({required String eventName, required String eventDate, required String imagePath}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(imagePath, width: 60, height: 60), // Event image on the left
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventName,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
    );
  }
}
