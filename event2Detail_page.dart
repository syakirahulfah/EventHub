import 'package:flutter/material.dart';
import 'eventRegistration_page.dart';

class Event2DetailPage extends StatelessWidget {
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
                  'assets/images/Event2.png',
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
                        '2D NIGHT RUN',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Perhatian kepada semua warga UTHM dan juga orang awam, Kelab Teknologi Maklumat FSKTM'
                        'akan mengadakan 2D Night Run dibawah Festival Konvokesyen UTHM 2023.'
                        'Ayuh ramai-ramai sertai *2D NIGHT RUN* yang akan diadakan pada :\n\n'
                        'Tarikh : 5 Disember 2023\n'
                        'Masa :  7:45PM - 10:00PM\n'
                        'Tempat : Padang Kawad , UTHM Kampus Induk\n'
                        'Jarak larian : 3KM\n'
                        'Bayaran : RM 35 per entry\n'
                        '• Futsal (L)\n'
                        '• E-sport (Mobile Legend)\n'
                        '• Badminton (L/P)\n\n'
                        'Setiap peserta akan mendapat T-shirt Night Run, Medal, Neon Kit , SMAP & E-cert\n'
                        'Jom ramai-ramai memeriahkan malam 2D NIGHT RUN!! Hadiah juga akan diberikan untuk pemenang pertama, kedua dan ketiga.',
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
                        eventName: '2D NIGHT RUN',
                        eventPrice: 'RM35',
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
