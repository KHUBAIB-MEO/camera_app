import 'package:camera_app/screens/sign_up.dart';
import 'package:camera_app/services/auth_services.dart';
import 'package:camera_app/widgets/input_textfeild.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
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
                "LOGIN",
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
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  auth.login(emailController.text.toString().trim(),
                      passController.text.toString().trim(), context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: Text(
                  "Login",
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
                    "Don't have an account ",
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
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
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
