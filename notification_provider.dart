import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  final List<Map<String, String>> _notifications = [];
  final Map<int, bool> _paymentStatus = {}; // Track payment status by notification index

  List<Map<String, String>> get notifications => _notifications;

  // Get the payment status for each event
  bool isPaid(int index) => _paymentStatus[index] ?? false;

  void addNotification(String eventName, String price) {
    _notifications.add({
      'eventName': eventName,
      'price': price,
    });
    _paymentStatus[_notifications.length - 1] = false; // Set the default status as not paid
    notifyListeners(); // Notify listeners to update UI
  }

  // Mark an event as paid
  void markAsPaid(int index) {
    _paymentStatus[index] = true; // Mark event as paid
    notifyListeners(); // Notify listeners to update UI
  }
}
