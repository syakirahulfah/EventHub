import 'package:flutter/material.dart';
import 'package:fsktm_eventhub/screens/home_page.dart';
import 'login_page.dart'; // Import LoginPage here

class SignUpPage extends StatelessWidget {
  final Function onSignUpSuccess; // Callback for successful sign-up

  SignUpPage({required this.onSignUpSuccess}); // Accept the callback in constructor

  @override
  Widget build(BuildContext context) {
    String fullName = '';
    String matricNo = '';
    String password = ''; // Define password variable

    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white, // Set background color to white
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Create New Account',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Full Name'),
            onChanged: (value) {
              fullName = value;
            },
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Matric No'),
            onChanged: (value) {
              matricNo = value;
            },
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            onChanged: (value) {
              password = value; // Store password in the variable
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Validate input fields
              if (fullName.isEmpty || matricNo.isEmpty || password.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill in all fields')),
                );
                return; // Exit if validation fails
              }

              // Proceed to HomePage after sign-up and call success callback
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
              );

              onSignUpSuccess(); // Call the callback function on successful sign-up
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF2f98bc),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
            child: const Text(
              'Sign Up',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(height: 20), // Space between buttons
          TextButton(
            onPressed: () {
              // Navigate back to LoginPage when already have an account is clicked
              Navigator.pop(context); // Close the modal bottom sheet and go back to LoginPage

              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return LoginPage(onLoginSuccess: () {
                    // Handle successful login if needed
                  });
                },
              );
            },
            child: Text('Already have an account? Log in', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
