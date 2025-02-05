//import 'package:camera_app/screens/login_page.dart';
import 'package:camera_app/firebase_options.dart';
import 'package:camera_app/screens/sign_up.dart';
//import 'package:camera_app/screens/splash_screen.dart';
import 'package:camera_app/theme/darkmode.dart';
import 'package:camera_app/theme/lightmode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: SignUp(),
    );
  }
}
