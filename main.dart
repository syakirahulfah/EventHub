import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notification_provider.dart';
import 'user_provider.dart'; // Import the UserProvider
import 'main_page.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NotificationProvider()), // Notification Provider
        ChangeNotifierProvider(create: (_) => UserProvider()),         // User Provider
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSKTM Event Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // You can modify this to your preferred theme
      ),
      initialRoute: '/',  // Initial route
      routes: {
        '/': (context) => SplashScreen(),   // Splash screen route
        '/main': (context) => MainPage(),   // Main page route
      },
      debugShowCheckedModeBanner: false,   // Optional: Disable debug banner for production
    );
  }
}
