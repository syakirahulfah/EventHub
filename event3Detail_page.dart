import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event3DetailPage extends StatelessWidget {
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
                  'assets/images/Event3.png',
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
                        'INTERFACULTY SPORTS ATHLETE SEARCH ANNOUNCEMENT',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Fakulti Sains Komputer dan Teknologi Maklumat (FSKTM), Universiti Tun Hussein Onn Malaysia (UTHM), '
                        'sedang mencari atlet untuk menyertai Sukan Antara Fakulti Pemilihan akan dilakukan untuk kategori sukan berikut:\n\n'
                        '1. Bola Sepak(Lelaki)\n'
                        '2. Hoki(Lelaki/Perempuan)\n'
                        '3. Tennis(Lelaki/Perempuan)\n'
                        '4. Olahraga:\n'
                        '- 100m (Lelaki/Perempuan)\n'
                        '- 200m (Lelaki/Perempuan)\n'
                        '- 400m (Lelaki/Perempuan)\n'
                        '- 800m (Lelaki/Perempuan)\n'
                        '- 4x100m (Lelaki)\n'
                        '5. Badminton 🏸 (Lelaki/Perempuan)\n'
                        '6. E-Sports:\n'
                        '- PUBG\n'
                        '- FIFA',
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
                        eventName: 'INTERFACULTY SPORTS ATHLETE SEARCH ANNOUNCEMENT',
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
