import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});


  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter your text...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }
}