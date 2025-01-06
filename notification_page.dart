import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fsktm_eventhub/notification_provider.dart';
import 'package:fsktm_eventhub/user_provider.dart';
import 'payment_page.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access notifications from NotificationProvider
    final notifications = Provider.of<NotificationProvider>(context).notifications;
    final user = Provider.of<UserProvider>(context);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFF081033),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: notifications.isEmpty
                  ? const Center(
                      child: Text(
                        'No notifications yet.',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : ListView.builder(
                      itemCount: notifications.length,
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        final isPaid = Provider.of<NotificationProvider>(context).isPaid(index); // Check payment status
                        return _buildNotificationCard(
                          context,
                          eventName: notification['eventName']!,
                          price: notification['price']!,
                          isPaid: isPaid, // Pass the payment status
                          userName: user.name,
                          matricNo: user.matricNo,
                          notificationIndex: index,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard(
    BuildContext context, {
    required String eventName,
    required String price,
    required bool isPaid, // Add payment status
    required String userName,
    required String matricNo,
    required int notificationIndex,
  }) {
    final isFreeEvent = price.toLowerCase() == 'free';

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: isPaid ? Colors.white : (isFreeEvent ? Colors.white : Colors.green), // Color change based on payment status or free event
      child: ListTile(
        title: Text(
          eventName,
          style: TextStyle(color: isPaid || isFreeEvent ? Colors.black : Colors.white), // Text color based on payment status
        ),
        subtitle: Text(
          'Price: $price',
          style: TextStyle(color: isPaid || isFreeEvent ? Colors.black : Colors.white),
        ),
        onTap: isPaid // Prevent interaction if the event is already paid
            ? null // No action if already paid
            : isFreeEvent
                ? () {
                    // Show dialog for free events
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('No Payment Required'),
                          content: const Text('This event is free. You do not need to make any payment.'),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                : () {
                    // Navigate to PaymentPage for paid events
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentPage(
                          eventName: eventName,
                          userName: userName,
                          matricNo: matricNo,
                          totalPrice: price,
                          notificationIndex: notificationIndex,
                        ),
                      ),
                    ).then((result) {
                      // Update payment status after returning from PaymentPage
                      if (result == true) {
                        // Mark the event as paid after successful payment
                        Provider.of<NotificationProvider>(context, listen: false)
                            .markAsPaid(notificationIndex);
                      }
                    });
                  },
      ),
    );
  }
}
