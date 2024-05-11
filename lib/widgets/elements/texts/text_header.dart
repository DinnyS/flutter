import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget{
  const HeaderText({super.key , required this.title , this.color});
  
  final String title;
  final Color? color;


@override
  Widget build(BuildContext context) {
    return Text(title , style: TextStyle(color: color ?? Colors.black , fontSize: 36 , fontWeight: FontWeight.w900),);
  }
  }