import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event4DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Details"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF081033), // Background color
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Event4.png',
                  width: double.infinity, // Fit the screen width
                  fit: BoxFit.contain, // Ensure the entire image is visible
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FSKTM SPORTS CUP CHAMPIONSHIP',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'We are pleased to inform that the Information Technology Club (ITC) will be organizing'
                        'the Kejohanan Piala Sukan FSKTM which will take as detailed below :\n\n'
                        'Tarikh : 22 Jun 2024 (Sabtu)\n'
                        'Masa : 8 a.m hingga 6 p.m.\n\n'
                        'The following are the sports that will be contested in SAJ:\n'
                        '• Bola Tampar (L)\n'
                        '• Bola Jaring (P)\n'
                        '• Futsal (L)\n'
                        '• E-sport (Mobile Legend)\n'
                        '• Badminton (L/P)\n\n'
                        'We greatly appreciate the cooperation and support of all FSKTM students.'
                        'The participation of Year 1 and Year 2 students is highly encouraged.\n\n'
                        '“We Network For All”',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100), // Add space to push the button down
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventRegistrationPage(
                        eventName: 'FSKTM SPORTS CUP CHAMPIONSHIP',
                        eventPrice: 'Free',
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2f98bc), // Button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Join Event'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
