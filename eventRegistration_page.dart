import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fsktm_eventhub/notification_provider.dart';
import 'package:fsktm_eventhub/user_provider.dart';

class EventRegistrationPage extends StatelessWidget {
  final String eventName; // Pass the event name
  final String eventPrice; // Pass the event price

  EventRegistrationPage({required this.eventName, required this.eventPrice});

  @override
  Widget build(BuildContext context) {
    String fullName = '';
    String matricNo = '';
    String phoneNumber = '';
    String selectedCourse = 'BIM'; // Default value for dropdown
    List<String> courses = ['BIM', 'BIS', 'BIP', 'BIW', 'BIT']; // Course options

    return Scaffold(
      appBar: AppBar(
        title: Text("Event's Registration"),
        backgroundColor: Color(0xFF2f98bc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      backgroundColor: Color(0xFF081033), // Set Scaffold background color
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                    onChanged: (value) {
                      fullName = value;
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Matric No',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                    onChanged: (value) {
                      matricNo = value;
                    },
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    value: selectedCourse,
                    decoration: InputDecoration(
                      labelText: 'Course',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                    items: courses.map((String course) {
                      return DropdownMenuItem<String>(
                        value: course,
                        child: Text(course),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      selectedCourse = newValue!;
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                    onChanged: (value) {
                      phoneNumber = value;
                    },
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  if (fullName.isNotEmpty &&
                      matricNo.isNotEmpty &&
                      phoneNumber.isNotEmpty) {
                    // Save user information via UserProvider
                    final userProvider =
                        Provider.of<UserProvider>(context, listen: false);
                    userProvider.setUserDetails(fullName, matricNo);

                    // Add notification via NotificationProvider
                    Provider.of<NotificationProvider>(context, listen: false)
                        .addNotification(eventName, eventPrice);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registration Successful')),
                    );

                    // Navigate to home page
                    Navigator.pushReplacementNamed(context, '/main');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all fields')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2f98bc),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                child: Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
