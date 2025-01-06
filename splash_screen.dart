import 'package:flutter/material.dart';
import 'package:fsktm_eventhub/main_page.dart';
import 'login_page.dart'; // Import LoginPage

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity, // Fit width to the screen
        height: double.infinity, // Fit height to the screen
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                "assets/images/splash screen.png", // Your splash background image
                fit: BoxFit.cover,
              ),
            ),
            // Center Content
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Align button to the bottom
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Show login page when button is clicked
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true, // Allow full screen height
                          builder: (BuildContext context) {
                            return LoginPage(onLoginSuccess: () {
                              // Navigate to MainPage after successful login
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => MainPage()),
                              );
                            });
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20), // Bigger button size
                        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Bigger text
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                        ),
                      ),
                      child: Text('Log In'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
