import 'package:flutter/material.dart';

class InputTextfeild extends StatelessWidget {
  const InputTextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: TextField(
        style: TextStyle(
          color: Theme.of(context).colorScheme.primaryFixed,
        ),
        decoration: InputDecoration(
          prefixIcon:
              Icon(Icons.email, color: Theme.of(context).colorScheme.primary),
          hintText: "Email",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.primaryFixed.withOpacity(0.5),
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.tertiary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
