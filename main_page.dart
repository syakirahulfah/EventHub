import 'package:flutter/material.dart';
import 'screens/home_page.dart'; // Import HomePage
import 'screens/search_page.dart'; // Import SearchPage
import 'screens/notification_page.dart'; // Import NotificationPage
import 'screens/profile_page.dart'; // Import ProfilePage

class MainPage extends StatefulWidget {
  final int initialIndex; // Optional argument to specify the starting tab

  MainPage({this.initialIndex = 0}); // Default to the Home tab if no index is provided

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _currentIndex; // Track the current index of the bottom navigation bar

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex; // Set the initial tab based on the argument
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update current index when an item is tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
        backgroundColor: Colors.blueGrey[800],
      ),
    );
  }
}
