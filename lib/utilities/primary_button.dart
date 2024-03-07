import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  final String title;
  VoidCallback onPressed;

  PrimaryButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.yellow,
      child: Text(title),
    );
  }
}