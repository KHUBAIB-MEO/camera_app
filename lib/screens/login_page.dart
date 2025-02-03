import 'package:camera_app/widgets/input_textfeild.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                      .withOpacity(0.5),
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
              InputTextfeild(),
              InputTextfeild(),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
