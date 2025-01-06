import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event7DetailPage extends StatelessWidget {
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
                  'assets/images/Event7.png',
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
                        'RECRUITMENT OF NEW ITC MEMBERS 2024/2025',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Sukacita dimaklumkan bahawa kami sedang merekrut ahli lembaga ITC baharu untuk 2024/2025. '
                        'Apakah ITC? ITC ialah kelab fakulti FSKTM yang menganjurkan program yang lebih membantu dan menghiburkan '
                        'kepada pelajar FSKTM memamerkan peluang mereka dan memberi peluang untuk menyertai program yang lebih menarik. '
                        'Adakah anda teruja untuk mengetahui lebih lanjut tentang ITC? Sertai kelab kami sekarang!\n\n'
                        'Sekian,\n'
                        'Kelab Teknologi Maklumat\n'
                        'Fakulti Sains Komputer & Teknologi Maklumat\n'
                        'Universiti Tun Hussein Onn Malaysia',
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
                        eventName: 'RECRUITMENT OF NEW ITC MEMBERS 2024/2025',
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
