import 'package:camera_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
