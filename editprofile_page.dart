import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  final Function(String, String) onSave; // Callback function to save changes

  EditProfilePage({required this.onSave});

  @override
  Widget build(BuildContext context) {
    String newName = ""; // Variable to hold new name input
    String newMatricNo = ""; // Variable to hold new matric number input

    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        backgroundColor: Color(0xFF2f98bc), // Taskbar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white), // Tick icon with white color
            onPressed: () {
              onSave(newName, newMatricNo); // Call the save function with new values
              Navigator.pop(context); // Return to Profile Page
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF081033),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Default Profile Picture
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[800],
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Editable Fields for Full Name and Matric No.
            _buildEditableField("Full Name", "Enter your full name", (value) {
              newName = value; // Update newName when text changes
            }),
            SizedBox(height: 10),
            _buildEditableField("Matric No", "Enter your matric number", (value) {
              newMatricNo = value; // Update newMatricNo when text changes
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableField(String label, String hint, Function(String) onChanged) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.blueGrey[900],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
