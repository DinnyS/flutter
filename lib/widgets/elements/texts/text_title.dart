import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key , required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title , style: const TextStyle(color: Colors.black , fontSize: 24 , fontWeight: FontWeight.w600),);
  }
}