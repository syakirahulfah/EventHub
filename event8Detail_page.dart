import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event8DetailPage extends StatelessWidget {
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
                  'assets/images/Event8.png',
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
                        'ENTREPRENEURSHIP CARNIVAL 3.0 FSKTM 2024',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Jom ramai-ramai memeriahkan lagi Karnival Keusahawanan FSKTM 3.0 yang akan berlangsung:\n\n'
                        'Tarikh: 20-21 November 2024\n'
                        'Tempat: Parkir FSKTM\n'
                        'Masa: 8AM-6PM\n\n'
                        'Karnival ini menawarkan pelbagai jualan yang seperti makanan, minuman '
                        'dan juga permainan yang menarik perhatian anda.Nantikan karnival ini dan jumpa anda disana!',
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
                        eventName: 'ENTREPRENEURSHIP CARNIVAL 3.0 FSKTM 2024',
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
