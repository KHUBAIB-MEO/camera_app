import 'package:camera_app/screens/splash_screen.dart';
import 'package:camera_app/theme/darkmode.dart';
import 'package:camera_app/theme/lightmode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: SplashScreen(),
    );
  }
}
