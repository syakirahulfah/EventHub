import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider package
import 'package:fsktm_eventhub/user_provider.dart'; // Make sure to import your UserProvider
import 'package:fsktm_eventhub/notification_provider.dart'; // Import NotificationProvider

class PaymentPage extends StatefulWidget {
  final String eventName; // Event name passed from the notification page
  final String totalPrice; // Total price to pay
  final int notificationIndex; // Index of the notification to mark as paid

  PaymentPage({
    required this.eventName,
    required this.totalPrice,
    required this.notificationIndex,
    required String userName,
    required String matricNo,
  });

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedPaymentMethod = 'RHB Bank'; // Default payment method

  @override
  Widget build(BuildContext context) {
    // Access user data from UserProvider
    final userProvider = Provider.of<UserProvider>(context);
    String userName = userProvider.name;
    String userMatricNo = userProvider.matricNo;

    // Access NotificationProvider to mark the notification as paid
    final notificationProvider = Provider.of<NotificationProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        backgroundColor: Color(0xFF2f98bc), // AppBar color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Container(
        color: Color(0xFF081033), // Background color for the page
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Name Section
            Text(
              'Event Name: ${widget.eventName}', // Accessing widget parameters
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white, thickness: 1), // Separator line

            // Details Section
            Text(
              'Details',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Name: $userName', // Using user data from UserProvider
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              'Matric No: $userMatricNo', // Using user data from UserProvider
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              'Total Price: ${widget.totalPrice}', // Accessing widget parameters
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white, thickness: 1), // Separator line

            // Payment Method Section
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            ListTile(
              title: const Text('Online Banking (RHB Bank)', style: TextStyle(color: Colors.white)),
              leading: Radio<String>(
                value: 'RHB Bank',
                groupValue: selectedPaymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    selectedPaymentMethod = value!; // Update the state
                  });
                },
                activeColor: Color(0xFF2f98bc), // Active color for radio button
              ),
            ),
            ListTile(
              title: const Text('E-Wallet (TNG)', style: TextStyle(color: Colors.white)),
              leading: Radio<String>(
                value: 'TNG E-Wallet',
                groupValue: selectedPaymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    selectedPaymentMethod = value!; // Update the state
                  });
                },
                activeColor: Color(0xFF2f98bc), // Active color for radio button
              ),
            ),

            Spacer(), // Pushes the button to the bottom

            // Pay Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle payment logic here
                  if (selectedPaymentMethod.isNotEmpty) {
                    // Mark the notification as paid instead of removing it
                    notificationProvider.markAsPaid(widget.notificationIndex);

                    // Show success message
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Payment Successful')));                    
                    Navigator.pop(context); // Optionally go back after payment
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please select a payment method')));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2f98bc), // Button color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                child: Text('Pay'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
