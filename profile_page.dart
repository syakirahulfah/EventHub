import 'package:flutter/material.dart';
import 'editprofile_page.dart'; // Import the EditProfilePage

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = "User Name"; // This will hold the user's name
  String matricNo = "123456"; // This will hold the user's matric number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF081033),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Default Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[800],
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // User Information Fields
            _buildInfoField("Name", userName),
            SizedBox(height: 10),
            _buildInfoField("Matric Number", matricNo),
            SizedBox(height: 30),

            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(
                      onSave: (newName, newMatricNo) {
                        setState(() {
                          userName = newName; // Update userName when saved
                          matricNo = newMatricNo; // Update matric number when saved
                        });
                      },
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2f98bc),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoField(String label, String value) {
    return Container(
      width: double.infinity, // Make the field take full width
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
              fontSize: 12, // Smaller size for label
            ),
          ),
          SizedBox(height: 5), // Spacing between label and value
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16, // Larger size for value
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
