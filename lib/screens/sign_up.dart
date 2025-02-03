import 'package:camera_app/screens/login_page.dart';
import 'package:camera_app/services/auth_services.dart';
import 'package:camera_app/widgets/input_textfeild.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  final AuthServices auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryFixed
                      .withValues(alpha: 0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
              border: Border.all(
                width: 2,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InputTextfeild(
                text: "E M A I L",
                obscure: false,
                controller: emailController,
                prefixIcon: Icon(
                  Icons.email,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              InputTextfeild(
                text: "P A S S W O R D",
                obscure: true,
                controller: passController,
                prefixIcon: Icon(
                  Icons.password,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              InputTextfeild(
                text: "C O N F I R M  P A S S W O R D",
                obscure: true,
                controller: confirmPassController,
                prefixIcon: Icon(
                  Icons.password,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (emailController.text.isEmpty ||
                      passController.text.isEmpty ||
                      confirmPassController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Enter all information"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  } else if (passController.text !=
                      confirmPassController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Password not matched!"),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  } else {
                    print("khubaib");
                    auth.signUp(emailController.text,
                        confirmPassController.text, context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
