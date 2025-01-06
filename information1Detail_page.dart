import 'package:flutter/material.dart';

class Information1DetailPage extends StatelessWidget {
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
                  'assets/images/Information1.png',
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
                        'FSKTM ACADEMIC AND CAREER ADVISORY PROGRAM 2023: '
                        'TOGETHERNESS CATALYSTS EXCELLENCE',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Kami dengan sukacitanya ingin memaklumkan bahawa Fakulti Sains Komputer Dan Teknologi Maklumat (FSKTM) '
                        'Akan mengadakan Program Penasihat Akademik dan Kerjaya FSKTM 2023 '
                        'yang bertemakan "Kebersamaan Pemangkin Kecemerlangan". Program ini akan diadakan pada hari Khamis, 30 November 2023, '
                        'dari jam 8 pagi hingga 12 tengah hari, bertempat di perkarangan Fakulti Sains Komputer dan Teknologi Maklumat (FSKTM).\n\n'
                        'Tentatif program adalah seperti berikut:\n\n'
                        '7.30 - 8.00 pagi\n'
                        '- Ketibaan pelajar dan staf FSKTM\n'
                        '- Nyanyian Lagu UTHM\n\n'
                        '8.15 pagi\n'
                        '- Bacaan doa – Azizan/ Dr Amin/ En. Izar\n'
                        '- Ucapan aluan majlis -Dekan\n\n'
                        '8.30 - 9.00 pagi\n'
                        '- Zumba\n\n'
                        '9.00 - 9.30 pagi\n'
                        '- Slot ITC\n\n'
                        '9.30 - 10.30 pagi\n'
                        '- Berkumpul bersama PAK masing-masing.\n'
                        '- Sembang santai – Akademik, Sahsiah, Hal Ehwal pelajar\n'
                        '- Pelajar Scan QR Code untuk Kedatangan Online.\n\n'
                        '10.30 - 11.00 pagi\n'
                        '- Minum Pagi\n\n'
                        '11.00 - 12.00 tengah hari\n'
                        '- Sambung Aktiviti Bersama PAK\n\n'
                        '12.00 tengah hari\n'
                        'Bersurai\n\n'
                        'Warna tema baju/T-shirt/Jersi PAK PERDANA mengikut Program:\n'
                        '1. BIP - biru\n'
                        '2. BIT - Kelabu\n'
                        '3. BIM - purple\n'
                        '4. BIW - hitam\n'
                        '5. BIS - Merah',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100), // Add space to push the button down
              ],
            ),
          ),
        ],
      ),
    );
  }
}
