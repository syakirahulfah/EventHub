import 'package:flutter/material.dart';
import 'eventRegistration_page.dart'; // Import EventRegistrationPage

class Event5DetailPage extends StatelessWidget {
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
                  'assets/images/Event5.png',
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
                        'CELCOMDIGI UNIVERSITY INVANSION : S.A.F.E INTERNET CODE',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'The Information Technology Club (ITC) will be organising a collaborative talk '
                        'with CelcomDigi regarding “S.A.F.E Internet Code” as detailed below :\n\n'
                        'Date & Day : 25th June 2024 (Tuesday)\n'
                        'Time : 10:30am - 1:00pm\n'
                        'Location : Auditorium FSKTM, Level 3\n\n'
                        'Limited to 86 students in main campus only except BIS Year 1 & 2 students '
                        'because you are mandatory to join another ITC program which is “PROGRAM AWARENESS TO ACTION : PROTECTING YOUR DIGITAL LIFE”\n\n'
                        'For your information, lunch will be provided for all participants along with door gifts, SMAP credits and exemption letter!',
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
                        eventName: 'CELCOMDIGI UNIVERSITY INVANSION : S.A.F.E INTERNET CODE',
                        eventPrice: 'Free',
                      ),
                    ),
                  ); // Navigate to EventRegistrationPage
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
