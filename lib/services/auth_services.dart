import 'package:camera_app/screens/home_page.dart';
import 'package:camera_app/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  //signUp FUNCTION//
  void signUp(
      String userEmail, String userPassword, BuildContext context) async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Created Successfully')),
      );

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    } on FirebaseAuthException catch (e) {
      //print(e);
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("The password provided is too weak."),
            duration: Duration(seconds: 1),
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("The account already exists for that email."),
            duration: Duration(seconds: 1),
          ),
        );
      } else if (e.code == "network-request-failed") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("check your internet connection!"),
            duration: Duration(seconds: 1),
          ),
        );
      }
    } catch (e) {
      //print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("$e"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  //LOGIN FUNCTION//
  void login(
      String userEmail, String userPassword, BuildContext context) async {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Account Login Successfully')),
      );
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No user found for that email.')),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Wrong password provided for that user.')),
        );
      } else if (e.code == "network-request-failed") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("check your internet connection!"),
            duration: Duration(seconds: 1),
          ),
        );
      } else if (e.code == "invalid-credential") {
        print("K H U B A I B");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Incorrect email or password"),
            duration: Duration(seconds: 1),
          ),
        );
      }
    }
  }

  //SIGNOUT FUNCTION//
  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
