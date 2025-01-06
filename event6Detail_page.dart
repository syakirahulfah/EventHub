import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event6DetailPage extends StatelessWidget {
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
                  'assets/images/Event6.png',
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
                        'DEAN AWARD CEREMONY',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'It is with great pleasure we would like to inform you that the FSKTM UTHM Student Representative Council (MPP) '
                        'in collaboration with the Information Technology Club (ITC) will organize the FSKTM Dean Award Ceremony 2024 '
                        'for Dean Listed students from Semester 1 & 2 Session 2022/2023 which will be held as detailed below:\n\n'
                        'Tarikh (Date): 20 June 2024\n'
                        'Masa (Time): 8.00 AM to 5.00 PM\n'
                        'Tempat (Venue): Dataran Terbuka\n'
                        'Yuran (Commitment Fees): RM3 per person\n\n'
                        'For any inquiries please contact:\n'
                        '(Ms Aliya) - 01120786192\n'
                        '(Ms Nisa) - 01151361909\n',
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
                        eventName: 'DEAN AWARD CEREMONY',
                        eventPrice: 'RM3',
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
