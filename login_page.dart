import 'package:flutter/material.dart';
import 'signup_page.dart'; // Import SignUpPage

class LoginPage extends StatelessWidget {
  final Function onLoginSuccess; // Callback for successful login

  LoginPage({required this.onLoginSuccess});

  @override
  Widget build(BuildContext context) {
    String username = '';
    String password = '';

    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white, // Set background color to white
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Mini Title
          Text(
            'Log In',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              fillColor: Colors.grey[200],
              filled: true,
            ),
            onChanged: (value) {
              username = value;
            },
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              fillColor: Colors.grey[200],
              filled: true,
            ),
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle login logic here
              if (username.isNotEmpty && password.isNotEmpty) {
                onLoginSuccess(); // Call the callback function on successful login
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2f98bc), // Set button color to #2f98bc
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: Text('Log In'),
          ),
          SizedBox(height: 20), // Space between buttons
          TextButton(
            onPressed: () {
              // Navigate to SignUp Page
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return SignUpPage(onSignUpSuccess: () {
                    Navigator.pop(context); // Close the sign-up modal
                    onLoginSuccess(); // Call the same function on sign-up success
                  });
                },
              );
            },
            child: Text(
              'New User? Create an account',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
