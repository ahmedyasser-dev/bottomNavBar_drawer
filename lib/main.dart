import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/profile_page.dart';
import 'package:navigation/pages/settings_page.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        '/homepage' :(context) => const HomePage(),
        '/settingspage' :(context) => const SettingsPage(),
        '/mainpage' :(context) => MainPage(),
        '/profilepage' :(context) => const ProfilePage(),
      },
    );
  }
}

