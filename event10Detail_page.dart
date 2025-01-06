import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event10DetailPage extends StatelessWidget {
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
                  'assets/images/Event10.png',
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
                        'A DAY AT KUALA LUMPUR FOR'
                        ' INTERNATIONAL BOOKFAIR & GRADUAN ASPIRE 2024',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'It is with great pleasure we would like to inform that the Information Technology Club (ITC) in collaboration with '
                        'the UTHM Student Representative Council will organize A Day at Kuala Lumpur for International Bookfair & Graduan Aspire 2024 which will be held as detailed below:\n\n'
                        'Tarikh (Date) : 25 Mei 2024\n'
                        'Masa (Time) :  9.30 a.m. - 8.30 p.m.\n'
                        'Tempat (Venue) :  World Trade Centre Kuala Lumpur (WTC KL) & Kuala Lumpur Convention Centre (KLCC)\n'
                        'Yuran (Fees) : RM 10 only\n\n'
                        'SMAP disediakan kepada semua Mahasiswa UTHM\n'
                        'Penyertaan Terbuka kepada Mahasiswa UTHM',
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
                        eventName: 'A DAY AT KUALA LUMPUR FOR'
                        ' INTERNATIONAL BOOKFAIR & GRADUAN ASPIRE 2024',
                        eventPrice: 'RM10',
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
