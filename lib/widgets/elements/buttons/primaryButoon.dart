import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, this.title, this.color});

  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Colors.white30,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: Text(
        title ?? 'More Info',
        style: TextStyle(
            color: color ?? Colors.white,
            fontWeight: FontWeight.w500,
            shadows: const <Shadow>[
              Shadow(color: Colors.black, blurRadius: 5, offset: Offset(1, 1))
            ]),
      ),
    );
  }
}
