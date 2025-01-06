import 'package:flutter/foundation.dart';

/// A provider to manage user-specific information like name and matric number.
class UserProvider extends ChangeNotifier {
  // User's full name
  String _name = '';
  
  // User's matric number
  String _matricNo = '';

  /// Getter for the user's name
  String get name => _name;

  /// Setter for the user's name
  set name(String newName) {
    _name = newName;
    notifyListeners(); // Notify listeners about the change
  }

  /// Getter for the user's matric number
  String get matricNo => _matricNo;

  /// Setter for the user's matric number
  set matricNo(String newMatricNo) {
    _matricNo = newMatricNo;
    notifyListeners(); // Notify listeners about the change
  }

  /// Method to set both name and matric number at once
  void setUserDetails(String newName, String newMatricNo) {
    _name = newName;
    _matricNo = newMatricNo;
    notifyListeners(); // Notify listeners about the change
  }

  /// Method to clear user details (optional)
  void clearUserDetails() {
    _name = '';
    _matricNo = '';
    notifyListeners(); // Notify listeners about the change
  }
}
