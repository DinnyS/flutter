import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 150,
      height: 150,
      child: LoadingIndicator(
      indicatorType: Indicator.lineScalePulseOut, 
      colors: [Color.fromARGB(255, 249, 76, 202) , Colors.black , Colors.blue],      
      strokeWidth: 0,                    
      ),
    );
  }
}