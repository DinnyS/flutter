import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Color.fromARGB(255, 89, 89, 89), fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
