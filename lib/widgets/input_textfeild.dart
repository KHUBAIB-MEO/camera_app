import 'package:flutter/material.dart';

class InputTextfeild extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final bool obscure;
  final Icon prefixIcon;
  const InputTextfeild(
      {super.key,
      required this.text,
      required this.controller,
      required this.obscure,
      required this.prefixIcon});

  @override
  State<InputTextfeild> createState() => _InputTextfeildState();
}

class _InputTextfeildState extends State<InputTextfeild> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: TextField(
        obscureText: isObscure,
        obscuringCharacter: "*",
        controller: widget.controller,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primaryFixed,
        ),
        decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            hintText: widget.text,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Theme.of(context)
                  .colorScheme
                  .primaryFixed
                  .withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.tertiary,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            suffixIcon: widget.obscure == false
                ? null
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: isObscure == false
                        ? Icon(
                            Icons.remove_red_eye,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                  )),
      ),
    );
  }
}
