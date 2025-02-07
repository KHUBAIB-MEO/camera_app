import 'package:camera_app/services/auth_services.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.home),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text("H O M E"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.settings),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text("S E T T I N G"),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: IconButton(
              onPressed: () {
                authServices.signOut();
              },
              icon: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}
